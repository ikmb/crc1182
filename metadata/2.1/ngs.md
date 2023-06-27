# CRC1182 NGS Metadata standard v2.1

Established: June 2023

## Sample sheet

CRC1182 NGS sample sheet v2.1 [XLSX](CRC1182_NGS_data_v2.xlsx)

## Defined keys

| Key | Description | Unit | Category
| --- | ----------- | ---- | --------
| adapters R1 | Sequencing adapter R1 | String | Sequencing
| adapters R2 | Sequencing adapter R2 | String | Sequencing
| amount or size of sample collected | The total amount or size (volume (ml), mass (g) or area (m2) ) of sample collected. | L,g,kg,m2,m3 | Sample
| broad scale environmental context | broad-scale environmental context based on the ENVO ontology. | String | Sample
| collection date | The date the sample was collected with the intention of sequencing, either as an instance (single point in time) or interval | String | Undefined
| comment | A comment about the data | String | Generic
| common name | Common species name | String | Sample
| contact email | Email of primary contact | String | User
| contact name | Name of primary contact | String | User
| crc project | Name of CRC sub project | String | User
| enviornment location land or sea | Officially recognized country or sea where sample was taken | String | Sample
| environmental medium | Report the environmental material(s) immediately surrounding the sample or specimen at the time of sampling | String | Sample
| environment biome | Biome sample was collected from (EBI) | String | Sample
| environment feature | Environmental feature related to sample | String | Sample
| environment material | Environmental material sample was taken from | String | Sample
| environment temperature | Temperate at which sampling was conducted | °C | Sample
| experimental factor | Experimental factors are essentially the variable aspects of an experiment design which can be used to describe an experiment, or set of experiments, in an increasingly detailed manner | String | Generic
| file format | Format used to store data | String | Generic
| flowcell id | ID of flow cell | String | Sequencing
| flowcell lane | Lane on flow cell | Integer | Sequencing
| geographic location altitude | Altitude of sample collection site in m | m | Sample
| geographic location country | Country sample was collected in | String | Sample
| geographic location depth | Depth of sampling site in m | m | Sample
| geographic location latitude | Latitude of sample collection site | Coordinates | Sample
| geographic location longitude | Longitude of sample collection site | Coordinates | Sample
| host age | age of host at the time of sampling; relevant scale depends on species and study, e.g | days | Microbiome
| host body habitat | original body habitat where the sample was obtained from | String | Microbiome
| host body product | substance produced by the body, e.g | String | Microbiome
| host body site | name of body site where the sample was obtained from, such as a specific organ or tissue (tongue, lung etc...) | String | Microbiome
| host common name | common name of the host, e.g. human | String | Microbiome
| host diet | type of diet depending on the host, for animals omnivore, herbivore etc., for humans high-fat, Mediterranean etc.; can include multiple diet types | String | Microbiome
| host disease status | list of diseases with which the host has been diagnosed; can include multiple diagnoses | String | Microbiome
| host dry mass | measurement of dry mass | g,kg,mg | Microbiome
| host growth condition | Conditions under which host individual was grown | String | Microbiome
| host height | the height of subject | cm,m,mm | Microbiome
| host length | the length of subject | cm,m,mm | Microbiome
| host life stage | description of life stage of host | String | Microbiome
| host phenotype | phenotype of host | String | Microbiome
| host sex | Gender or sex of the host. | String | Microbiome
| host subject id | a unique identifier by which each subject can be referred to, de-identified, e.g. #131 | String | Microbiome
| host substrate | the growth substrate of the host | String | Microbiome
| host taxid | NCBI taxon id of the host, e.g. 9606 | String | Microbiome
| host total mass | total mass of the host at collection, the unit depends on host | g,kg | Microbiome
| investigation type | Nucleic Acid Sequence Report is the root element of all MIxS compliant reports as standardised by Genomic Standards Consortium | String | Generic
| known pathogenicity | To what is the entity pathogenic, for instance plant, fungi, bacteria | String | Sample
| library construction method | Library construction method used for clone libraries | String | Sequencing
| library id | Unique identifier of a sequencing library. Usually, this will be part of the name of a sequence file. | String | Sequencing
| library read group id | The unique read group ID of a set of reads. | String | Sequencing
| library read length | Length of sequence reads | String | Sequencing
| library reads sequenced | Total number of clones sequenced from the library | String | Sequencing
| library sample type | Sample type library was constructed from | String | Sequencing
| library screening strategy | Specific enrichment or screening methods applied before and/or after creating clone libraries in order to select a specific group of sequences | String | Sequencing
| library size | Total number of clones in the library prepared for the project | String | Sequencing
| library vector | Cloning vector type(s) used in construction of libraries | String | Sequencing
| local environmental context | Report the entity or entities which are in the sample or specimen’s local vicinity and which you believe have significant causal influences on your sample or specimen | String | Sample
| multiplex identifier fwd | Forward barcode for multiplexing | String | Sequencing
| multiplex identifier rev | Reverse barcode for multiplexing | String | Sequencing
| nucleic acid amplification | A link to a literature reference, electronic resource or a standard operating procedure (SOP), that describes the enzymatic amplification (PCR, TMA, NASBA) of specific nucleic acids | String | Sequencing
| nucleic acid extraction | A link to a literature reference, electronic resource or a standard operating procedure (SOP), that describes the material separation to recover the nucleic acid fraction from a sample | String | Sequencing
| organism count | Total cell count of any organism (or group of organisms) per gram, volume or area of sample, should include name of organism followed by count | String | Microbiome
| owner email | Email of data owner | String | User
| owner name | Name of data owner | String | User
| oxygenation status of sample | oxygenation status of sample | String | Sample
| pcr conditions | Description of reaction conditions and components for PCR in the form of 'initial denaturation:94degC_1.5min; annealing=...' | String | Sequencing
| pcr primers fwd | Forward PCR primers used for target amplification | String | Sequencing
| pcr primers rev | Reverse PCR primers used for target amplification | String | Sequencing
| pertubation | type of perturbation, e.g. chemical administration, physical disturbance, etc., coupled with time that perturbation occurred; can include multiple perturbation types | String | Sample
| ploidy | The ploidy level of the genome (e.g | String | Sample
| project name | Name of the project within which the sequencing was organized | String | Generic
| propagation | The type of reproduction from the parent stock | String | Microbiome
| relationship to oxygen | Is this organism an aerobe, anaerobe? Please note that aerobic and anaerobic are valid descriptors for microbial environments | String | Sample
| relevant standard operating procedures | Standard operating procedures used in assembly and/or annotation of genomes, metagenomes or environmental sequences in the format of a PMID, DOI or URL | String | Generic
| sample alias | Alias name of a sample | String | Sample
| sample barcode | NGS Barcode of sample | String | Sequencing
| sample collecting device or method | How a sample was collected | String | Sample
| sample description | Description of a sample | String | Sample
| sample material processing | A brief description of any processing applied to the sample during or after retrieving the sample from environment, or a link to the relevant protocol(s) performed. | String | Sample
| sample name | Unique name or identifier of a biological sample. | String | Sample
| sample salinity | salinity of sample, i.e. measure of total salt concentration | Integer | Sample
| sample storage duration | duration for which sample was stored | days,hours,months,weeks,years | Sample
| sample storage location | location at which sample was stored, usually name of a specific freezer/room | String | Sample
| sample storage temperature | temperature at which sample was stored, e.g. -80 | °C | Sample
| sample volume or weight for dna extraction | Total sample volume (ml) or weight (g) processed for DNA extraction | String | Sample
| scientific name | Scientific species name | String | Sample
| sequencing centre | Centre were sequencing was performed | String | Sequencing
| sequencing date | Date sequencing was performed | Date | Sequencing
| sequencing method | Sequencing machine used | String | Sequencing
| sequencing platform | Sequencing instrument | String | Sequencing
| source material identifier | Identifies a sample source material | String | Sample
| target gene | Targeted gene or locus name for marker gene studies | String | Sequencing
| target subfragment | Name of subfragment of a gene or locus | String | Sequencing
| tax id | NCBI Taxon ID, such as 9606 for human or 10090 for mouse. | Integer | Sample
