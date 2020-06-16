#! /bin/bash

#SBATCH -a 0-49
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J hp3_de

runs=500
iters=1000

# Version 0

PYTHONPATH=$PWD python3 dehb/examples/cc18/run_de_cc18.py --verbose True --gens $iters --pop_size 20 --run_id $SLURM_ARRAY_TASK_ID --task_id 189906 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/cc18/results/

if [ 1000 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/cc18/run_de_cc18.py \
        --pop_size 20 --gens $iters --runs $runs --task_id 126031 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/cc18/results/
fi

if [ 2000 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/cc18/run_de_cc18.py --verbose True \
        --pop_size 20 --gens $iters --runs $runs --task_id 189906 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/cc18/results/
fi

if [ 3000 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/cc18/run_de_cc18.py --verbose True \
        --pop_size 20 --gens $iters --runs $runs --task_id 167155 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/cc18/results/
fi

