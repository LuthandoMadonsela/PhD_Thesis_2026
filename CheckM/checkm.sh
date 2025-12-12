#!/bin/bash
#SBATCH --partition=agrp
#SBATCH --time=14-00:00:00
#SBATCH -N 1 # Nodes
#SBATCH -n 1 # Tasks
#SBATCH --cpus-per-task=10
#SBATCH --mem 5G
#SBATCH --error=checkm.%J.err
#SBATCH --output=checkm.%J.out

source /home/luthando/miniconda3/bin/activate checkm2

cd /home/luthando/Bins

checkm2 predict --input /home/luthando/Bins --output-directory /home/luthando/Bins/ChecM_output \
--threads 10 --database_path /home/sam/Databases/CheckM2_database/uniref100.KO.1.dmnd \
--remove_intermediates --extension fasta

conda deactivate
