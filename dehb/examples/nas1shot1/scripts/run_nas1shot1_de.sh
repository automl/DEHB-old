#!/bin/bash

#SBATCH -a 1-3
#SBATCH -p bosch_cpu-cascadelake
# SBATCH -J 1s1_de

iters=100
runs=500
pop=20
async=$1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_de_nas1shot1.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 1 --async $async
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_de_nas1shot1.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 2 --async $async
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_de_nas1shot1.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 3 --async $async
fi

