#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J bnn_re
#SBATCH -p bosch_cpu-cascadelake


dataset=$1

echo "Running RE on BNNOn"$dataset

PYTHONPATH=$PWD python3 dehb/examples/bnn/run_re_bnn.py --run_id $SLURM_ARRAY_TASK_ID --n_iters 2000 --output_path dehb/examples/bnn/results/ --dataset $dataset
