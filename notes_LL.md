# Preparation for running Eric's GAWN pipeline

## Conda environment
* Initialized envr with python 3.7
* `cufflinks`
* `gmap`
* `blast` (includes blast+ utilities)


## Steps

0. Linked my genome to `03_data`

1. Downloaded transcriptome for Atlantic Salmon v3.1 from NCBI : https://www.ncbi.nlm.nih.gov/genome/?term=salmo+salar+transcriptome

```
cd 03_data
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/905/237/065/GCF_905237065.1_Ssal_v3.1/GCF_905237065.1_Ssal_v3.1_rna.fna.gz
gunzip GCF_905237065.1_Ssal_v3.1_rna.fna.gz
```

2. Downloaded and compile swissprot database
(still in `03_data`)

```
wget ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz` 
gunzip uniprot_sprot.fasta.gz
makeblastdb -in uniprot_sprot.fasta -out swissprot -dbtype prot
```

3. Edited `02_infos/gawn_config.sh`
NCPUS=8
GENOME_NAME="genome.fasta"
TRANSCRIPTOME_NAME="GCF_905237065.1_Ssal_v3.1_rna.fna" 

SWISSPROT_DB="03_data/uniprot_sprot"


4. Launched the pipeline (from `gawn`)
`srun -p medium -c 8 --mem=20G --time=7-00:00:00 -J gawn ./gawn 02_infos/gawn_config.sh &`