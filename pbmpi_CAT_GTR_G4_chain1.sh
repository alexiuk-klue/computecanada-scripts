#!/bin/bash
#SBATCH --account=def-keeling
#SBATCH --time=28-00:00
#SBATCH --job-name=pbmpi_CAT_GTR_G4_chain1
#SBATCH --ntasks-per-node=32
#SBATCH --nodes=1
#SBATCH --mem=257000M
#SBATCH --mail-user=filip.husnik@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE

module load nixpkgs/16.09
module load intel/2018.3
module load openmpi/3.1.2
module load phylobayes-mpi/20180420

mpirun -np 32 pb_mpi -d alignment.phy -cat -gtr -S -dgam 4 chain1
