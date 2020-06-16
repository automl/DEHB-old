#!/bin/bash

#SBATCH -a 1-3
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J 1s1_dehb

iters=100
runs=500
pop=20
F=$1
Cr=$2

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
    	--runs $runs --verbose True --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 1
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
    	--runs $runs --verbose True --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 2
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
    	--runs $runs --verbose True --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space
fi

