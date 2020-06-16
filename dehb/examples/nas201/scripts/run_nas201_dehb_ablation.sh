#! /bin/bash

#SBATCH -a 1-3
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J 201_dehb
#SBATCH --mem 100000

iters=2000
runs=500
F=$1
Cr=$2

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py \
        --iter $iters --runs $runs --dataset cifar10-valid --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset cifar100 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset ImageNet16-120 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

