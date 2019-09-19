#!/bin/bash
#SBATCH --account=def-keeling
#SBATCH --time=14-00:00
#SBATCH --job-name=mb_GTR_I_G4
#SBATCH --cpus-per-task=32
#SBATCH --mem=128000M
#SBATCH --mail-user=filip.husnik@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE

modeule load intel/2018.3
module load openmpi/3.1.2
module load mrbayes/3.2.6/

mpirun -np 32 mb alignment.nex > mb_log.txt

#Your .nex files should contain the run parameters like this:
#BEGIN mrbayes;
#        lset nst=6 rates=invgamma Ngammacat=4;
#        mcmc ngen=50000000 Nruns=4 Nchains=8;
#        sump;
#        sumt;
#END;
