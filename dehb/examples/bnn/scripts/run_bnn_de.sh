#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J bnn_de
#SBATCH -p bosch_cpu-cascadelake


dataset=$1
# async=$2

echo "Running DE on BNNOn"$dataset

PYTHONPATH=$PWD python3 dehb/examples/bnn/run_de_bnn.py --run_id $SLURM_ARRAY_TASK_ID --verbose True --gens 10 --output_path dehb/examples/bnn/results/ --pop_size 20 --dataset $dataset --async_strategy immediate


