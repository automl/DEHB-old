#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J bnn_dehb
#SBATCH -p bosch_cpu-cascadelake

# dataset="bostonhousing"
dataset=$1
boundary='clip'

echo "Running DEHB on BNNOn"$dataset

PYTHONPATH=$PWD python3 dehb/examples/bnn/run_dehb_bnn.py --run_id $SLURM_ARRAY_TASK_ID --verbose True --iter 50 --output_path dehb/examples/bnn/results/ --dataset $dataset \
    --folder "dehb_"$boundary --boundary_fix_type $boundary
