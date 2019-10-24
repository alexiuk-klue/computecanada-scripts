#!/bin/bash
#SBATCH --account=def-keeling
#SBATCH --time=14-00:00
#SBATCH --job-name=metaSPAdes
#SBATCH --cpus-per-task=32
#SBATCH --mem=515000M
#SBATCH --mail-user=filip.husnik@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE

module load gcc/7.3.0
module load spades/3.11.1

spades.py --meta --pe1-1 forward.fastq.gz --pe1-2 reverse.fastq.gz --pe1-s singles.fastq.gz --threads 32 --memory 500 -o metaSPAdes_dir
