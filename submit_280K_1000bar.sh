#!/bin/bash -l

# NOTE the -l (login) flag!
#SBATCH -J 280K1000
#SBATCH -o w.output
#SBATCH -e w.errput
#SBATCH --mail-user jeo27@njit.edu
#Default in slurm
#SBATCH --mail-type=ALL
#SBATCH -p gor
#SBATCH --ntasks=27 --ntasks-per-node=9

module load gnu8/8.3.0  openmpi3/3.1.4 lammps/20200602

srun lmp_mpi  -in  system_280K_1000bar.in
