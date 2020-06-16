#!/bin/bash

#SBATCH -a 1-4
#SBATCH -J co_dehb
#SBATCH -p bosch_cpu-cascadelake


iters=200
runs=500
F=$1
Cr=$2

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True --n_cont 4 --n_cat 4 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True --n_cont 8 --n_cat 8 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True --n_cont 16 --n_cat 16 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True --n_cont 32 --n_cat 32 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

