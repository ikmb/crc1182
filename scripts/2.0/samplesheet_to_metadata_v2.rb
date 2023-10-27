#!/usr/bin/ruby
# == NAME
# samplesheet_to_metadata.rb
#
# == USAGE
# ./this_script.rb [ -h | --help ]
#[ -i | --infile ] |[ -o | --outfile ] | 
# == DESCRIPTION
# Converts the sample sheets from Z3 to metadata files
#
# == OPTIONS
# -h,--help Show help
# -i,--infile=INFILE input file

#
# == EXPERT OPTIONS
#
# == AUTHOR
#  Marc Hoeppner, mphoeppner@gmail.com

require 'optparse'
require 'ostruct'
require 'rubyXL'
require 'rubyXL/convenience_methods/cell'
require 'rubyXL/convenience_methods/color'
require 'rubyXL/convenience_methods/font'
require 'rubyXL/convenience_methods/workbook'
require 'rubyXL/convenience_methods/worksheet'

### Define modules and classes here

def command?(command)
    system("which #{ command} > /dev/null 2>&1")
end

class MetaEntry

    attr_accessor :key, :value, :unit

    def initialize(key,value,unit)
        @key = key.strip
        @value = value.strip
        @unit = unit.strip
    
        _sane?
    end
    
    private
    
    def _sane?
    
    end

end

# Only WGS84 coordinates allowed, need to re-format
def loc2wgs(value)

    value.gsub!(/\"/, '')

    new_value = ""
    if value.match(/^[0-9]*\,[0-9]*/)
        new_value = value.gsub(/\,/, '.')
    elsif value.match(/^[0-9]*\°.*/)
        # Coordinates are negative for lat south and long east
        new_value += "-" if value.match(/.*\S$/) or value.match(/.*W$/)
        new_value = value.gsub(/\"/, '').gsub(/\./, '').gsub(/\°/, '.').gsub(/\'/, '').gsub(/[N,E,S,W]$/, '')
    else
        new_value = value
    end

    return new_value
end

### Get the script arguments and open relevant files
options = OpenStruct.new()
opts = OptionParser.new()
opts.on("-i","--infile", "=INFILE","Input file") {|argument| options.infile = argument }
opts.on("-h","--help","Display the usage information") {
    puts opts
    exit
}

opts.parse! 

# Report any keys that were not defined in the reference sheet
# This can be used to sync up the samplesheet with the actual standard afterwards
undefined_keys = []

###################################
# Check for reference metadata info
###################################

metadata_reference = File.dirname(__FILE__) + "/../../metadata/2.0/CRC1182_NGS_data_v2.txt"
raise "Could not find the reference metadata sheet" unless File.exist?(metadata_reference)

ref_keys = {}

IO.readlines(metadata_reference).each do |line|
    e,s = line.strip.split("\t")
    ref_keys[e] = s unless ref_keys.has_key?(e)
end

#######################
# Parse XLS samplesheet
#######################

### Convert XLSX to CSV
xlsx = RubyXL::Parser.parse(options.infile)

front = xlsx["Submitter_Information"] || raise("Missing submitter page!")
meta = xlsx["Metadata"] || raise("Missing metadata page!")

### Get project information from first sheet

project_id = nil
main_contact_name = nil
main_contact_email = nil
principle_investigator = nil

front[1..5].each do |row|
    
    next if row.nil?
        
    key = row[0].value

    row[1] ? val = row[1].value : val = nil

    case key
    when "contact_email"
        main_contact_email = val
    when "contact_name"
        main_contact_name = val
    when "project_id"
        project_id = val
    when "owner_name"
        principle_investigator = val
    end

end

# Validate mandatory keys
[ project_id, main_contact_name, main_contact_email, principle_investigator ].each do |i|
    abort "Missing mandator contact field in samplesheet" if i.nil?
end

# Parse the metadata

units = []
meta.sheet_data[0][0..ref_keys.keys.length].each_with_index do |u,i|
    units << u.value unless u.value.nil?
end

# Get the column headers for later use
header = []
meta.sheet_data[1][0..ref_keys.keys.length].each_with_index do |h,i|
    header << h.value.gsub(" ", "_") unless h.value.nil?
end 

# Iterate over each row using the column headers to extract annotations
# We assume no more than 400 rows, which is usually reasonable
# This starts at row 3, as 1+2 are headers 

meta.sheet_data[2..400].each_with_index do |r,idx|

    data = {}
    header.each_with_index do |h,i|

	# Deal with empty columns without having the parser blow up
        r[i] ? val = r[i].value.to_s : val = nil

        if val && val.length > 0
            if val.include?("T00:00")
                val = val.split("T00:00")[0]
            end
            data[h] = val
        else
            warn "Missing mandatory value for #{h}" if ref_keys[h] == 1
        end

    end
    
    # Write the iRODS metadata package
    f = File.new(data["library_id"] + ".meta", "w+")

    f.puts "crc_project\t#{project_id}\tstring"
    f.puts "owner_name\t#{principle_investigator}\tstring"
    f.puts "contact_name\t#{main_contact_name}\tstring"
    f.puts "contact_email\t#{main_contact_email}\tstring"


    data.each do |k,v|
	u = units[header.index(k)]
	meta = MetaEntry.new(k,v,u)
        next if meta.value == "NA"
        f.puts "#{meta.key}\t#{meta.value}\t#{meta.unit}"
    end

    f.close
    
end
