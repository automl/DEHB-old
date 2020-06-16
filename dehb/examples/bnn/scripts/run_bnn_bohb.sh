#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J bnn_bohb
#SBATCH -p bosch_cpu-cascadelake


dataset=$1

echo "Running BOHB on BNNOn"$dataset


PYTHONPATH=$PWD python3 dehb/examples/bnn/bnn.py --num_iterations 50 --run_id $SLURM_ARRAY_TASK_ID --method bohb --dest_dir ~/DE_NAS/DEHB/dehb/examples/bnn/results/ --min_budget 500 --max_budget 10000 --dataset $dataset


