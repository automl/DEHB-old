#!/bin/bash

#SBATCH -a 1-6
#SBATCH -J pnet_dehb
#SBATCH -p bosch_cpu-cascadelake


iters=1000
runs=500
F=$1
Cr=$2


# Version 1

if [[ 1 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [[ 2 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [[ 3 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [[ 4 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [[ 5 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [[ 6 -eq $SLURM_ARRAY_TASK_ID ]]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

