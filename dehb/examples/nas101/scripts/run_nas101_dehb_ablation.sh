#!/bin/bash

#SBATCH -a 1-7
#SBATCH -J 101
#SBATCH -p bosch_cpu-cascadelake

runs=500
iters=2500
F=$1
Cr=$2

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifara/ --benchmark nas_cifar10a \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarb/ --benchmark nas_cifar10b \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarc/ --benchmark nas_cifar10c \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

