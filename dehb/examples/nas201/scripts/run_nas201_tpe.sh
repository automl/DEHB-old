#! /bin/bash

#SBATCH -a 1-3
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J 201_tpe
#SBATCH --mem 100000


iters=5000
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_tpe_nas201.py \
        --n_iters $iters --runs $runs --dataset cifar10-valid --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_tpe_nas201.py --verbose True \
        --n_iters $iters --runs $runs --dataset cifar100 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_tpe_nas201.py --verbose True \
        --n_iters $iters --runs $runs --dataset ImageNet16-120 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/
fi

