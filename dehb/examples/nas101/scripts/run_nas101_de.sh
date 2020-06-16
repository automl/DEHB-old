#!/bin/bash

#SBATCH -a 4-7
#SBATCH -p bosch_cpu-cascadelake
# SBATCH -J 101_de

iters=200
runs=500
pop=20
gens=$iters


if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark nas_cifar10a
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark nas_cifar10b
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark nas_cifar10c
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark protein_structure
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark slice_localization
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark naval_propulsion
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_de_nas101.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/ --benchmark parkinsons_telemonitoring
fi

