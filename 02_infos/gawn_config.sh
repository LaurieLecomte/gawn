#!/bin/bash

# Modify the following parameter values according to your experiment
# Do not modify the parameter names or remove parameters
# Do not add spaces around the equal (=) sign

# Global parameters
NCPUS=10                    # Number of CPUs to use for analyses (int, 1+)

# Genome indexing
SKIP_GENOME_INDEXING=0      # 1 to skip genome indexing, 0 to index it

# Genome annotation with transcriptome
# NOTE: do not use compressed fasta files
GENOME_NAME="genome.fasta"                  # Name of genome fasta file found in 03_data
TRANSCRIPTOME_NAME="transcriptome.fasta"   # Name of transcriptome fasta file found in 03_data

# Swissprot
#SWISSPROT_DB="~/Software/blastplus_databases/swissprot"
#SWISSPROT_DB="/project/lbernatchez/users/lalec31/softwares/databases/swissprot"
SWISSPROT_DB="/project/lbernatchez/users/lalec31/softwares/databases/blastplus_databases/swissprot"
#SWISSPROT_DB="03_data/uniprot_sprot"

# download : 
# wget ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz
# gunzip uniprot_sprot.fasta.gz

#wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/swissprot.tar.gz