# RNAseq-Mapping-Vd
Workflow for alignment and count RNAseq data

### Workflow and rational

For this experiment, the cDNA library was sequenced on a HiSeq HighOutput 75bp PE.
Raw data were converted to fastq files and downloaded from BaseSpace with the following command:

_bs download project -id 287748466 ./_

The fastq files separated in 6 samples sequenced on 4 lanes were concatenated using the **concat_lanes.sh** script

Each sample was checked for sequence quality through a looping script (**iter-fastqc.sh script**)

### Mapping

Hisat2 was used for mapping

First, human genome hg38 was build using the following script:

_hisat2-build -f <hg38_genome_path> hg38_

All the samples were mapped to the ref genome in a loop using the mapping. sh script
