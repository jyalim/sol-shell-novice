#!/bin/bash
#SBATCH -p lightwork 
#SBATCH -q public
#SBATCH -t 5
#SBATCH -c 1
#SBATCH -e signal_processing_job.%j.err
#SBATCH -o signal_processing_job.%j.out
#SBATCH --mail-type=ALL
#SBATCH --export=NONE

# Grab node information if desired (note a lot of this is recorded by
# slurm already)
echo hostname: $(hostname)
echo    nproc: $(nproc)
echo     free: $(free -h)
echo      pwd: $(pwd)
# Load required software
module load mamba/latest
source activate scicomp
# Diagnostic information
module list
which python
# Put bash into a diagnostic mode that prints commands
set -x
# Starting
echo STARTED: $(date)
# Run scientific workflow
python get_fft.py
# Finished
echo FINISHED: $(date)
