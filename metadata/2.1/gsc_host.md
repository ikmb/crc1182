# CRC1182 NGS Metadata standard v2.1
## GSC MIxS host associated

Established: June 2023

## Sample sheet

GSC MIxS host-associated, sheet v2.1 [XLSX](GSC MIxS host associated)

This standard was devined by the genomics standards consortium and is compatible with the ENA metadata guidelines. 

## Defined keys

| Key | Description | Unit | Category
| --- | ----------- | ---- | --------
| adapters | Adapters provide priming sequences for both amplification and sequencing of the sample-library fragments | String | Sequencing
| altitude | The altitude of the sample is the vertical distance between Earth's surface above Sea Level and the sampled position in the air. | m | Undefined
| amount or size of sample collected | The total amount or size (volume (ml), mass (g) or area (m2) ) of sample collected. | L,g,kg,m2,m3 | Sample
| annotation source | For cases where annotation was provided by a community jamboree or model organism database rather than by a specific submitter | String | Generic
| broad-scale environmental context | Report the major environmental system the sample or specimen came from | String | Undefined
| chimera check software | Tool(s) used for chimera checking, including version number and parameters, to discover and remove chimeric sequences | String | Sequencing
| collection date | The date the sample was collected with the intention of sequencing, either as an instance (single point in time) or interval | String | Undefined
| depth | The distance below the surface of the water at which a measurement was made or a sample was collected | m | Undefined
| elevation | The elevation of the sampling site as measured by the vertical distance from mean sea level. | m | Undefined
| environmental medium | Report the environmental material(s) immediately surrounding the sample or specimen at the time of sampling | String | Sample
| estimated size | The estimated size of the genome (in bp) prior to sequencing | String | Sequencing
| experimental factor | Experimental factors are essentially the variable aspects of an experiment design which can be used to describe an experiment, or set of experiments, in an increasingly detailed manner | String | Generic
| extrachromosomal elements | Do plasmids exist of significant phenotypic consequence (e.g | String | Sample
| geographic location (country and/or sea) | The location the sample was collected from with the intention of sequencing, as defined by the country or sea | String | Undefined
| geographic location (latitude) | The geographical origin of the sample as defined by latitude | DD | Undefined
| geographic location (longitude) | The geographical origin of the sample as defined by longitude | DD | Undefined
| geographic location (region and locality) | The geographical origin of the sample as defined by the specific region name followed by the locality name. | String | Undefined
| host body product | substance produced by the body, e.g | String | Microbiome
| host dry mass | measurement of dry mass | g,kg,mg | Microbiome
| isolation and growth condition | Publication reference in the form of pubmed ID (pmid), digital object identifier (doi) or url for isolation and growth condition specifications of the organism/material | String | Sample
| library construction method | Library construction method used for clone libraries | String | Sequencing
| library reads sequenced | Total number of clones sequenced from the library | String | Sequencing
| library screening strategy | Specific enrichment or screening methods applied before and/or after creating clone libraries in order to select a specific group of sequences | String | Sequencing
| library size | Total number of clones in the library prepared for the project | String | Sequencing
| library vector | Cloning vector type(s) used in construction of libraries | String | Sequencing
| local environmental context | Report the entity or entities which are in the sample or specimen’s local vicinity and which you believe have significant causal influences on your sample or specimen | String | Sample
| multiplex identifiers | Molecular barcodes, called Multiplex Identifiers (MIDs), that are used to specifically tag unique samples in a sequencing run | String | Sequencing
| negative control type | The substance or equipment used as a negative control in an investigation | String | Experiment
| nucleic acid amplification | A link to a literature reference, electronic resource or a standard operating procedure (SOP), that describes the enzymatic amplification (PCR, TMA, NASBA) of specific nucleic acids | String | Sequencing
| nucleic acid extraction | A link to a literature reference, electronic resource or a standard operating procedure (SOP), that describes the material separation to recover the nucleic acid fraction from a sample | String | Sequencing
| number of replicons | Reports the number of replicons in a nuclear genome of eukaryotes, in the genome of a bacterium or archaea or the number of segments in a segmented virus | String | Sequencing
| organism count | Total cell count of any organism (or group of organisms) per gram, volume or area of sample, should include name of organism followed by count | String | Microbiome
| oxygenation status of sample | oxygenation status of sample | String | Sample
| pcr conditions | Description of reaction conditions and components for PCR in the form of 'initial denaturation:94degC_1.5min; annealing=...' | String | Sequencing
| pcr primers | PCR primers that were used to amplify the sequence of the targeted gene, locus or subfragment | String | Sequencing
| ploidy | The ploidy level of the genome (e.g | String | Sample
| positive control type | The substance, mixture, product, or apparatus used to verify that a process which is part of an investigation delivers a true positive. | String | Experiment
| project name | Name of the project within which the sequencing was organized | String | Generic
| propagation | The type of reproduction from the parent stock | String | Microbiome
| reference for biomaterial | Primary publication if isolated before genome publication; otherwise, primary genome report | String | Sample
| relevant electronic resources | A related resource that is referenced, cited, or otherwise associated to the sequence in the format of a PMID, DOI or URL | String | Sequencing
| relevant standard operating procedures | Standard operating procedures used in assembly and/or annotation of genomes, metagenomes or environmental sequences in the format of a PMID, DOI or URL | String | Generic
| sample material processing | A brief description of any processing applied to the sample during or after retrieving the sample from environment, or a link to the relevant protocol(s) performed. | String | Sample
| sample storage duration | duration for which sample was stored | days,hours,months,weeks,years | Sample
| sample storage temperature | temperature at which sample was stored, e.g. -80 | °C | Sample
| sample volume or weight for DNA extraction | Volume (ml) or mass (g) of total collected sample processed for DNA extraction | g,mL,mg,ng | Undefined
| sequence quality check | Indicate if the sequence has been called by automatic systems (none) or undergone a manual editing procedure (e.g | String | Analysis
| sequencing method | Sequencing machine used | String | Sequencing
| source material identifiers | A unique identifier assigned to a material sample (as defined by http://rs.tdwg.org/dwc/terms/materialSampleID, and as opposed to a particular digital record of a material sample) used for extracting nucleic acids, and subsequent sequencing | String | Undefined
| target gene | Targeted gene or locus name for marker gene studies | String | Sequencing
| target subfragment | Name of subfragment of a gene or locus | String | Sequencing
