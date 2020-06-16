#! /bin/bash

#SBATCH -a 1-50
#SBATCH -J rl_dehb0
#SBATCH -p bosch_cpu-cascadelake

boundary='clip'

PYTHONPATH=$PWD python3 dehb/examples/cartpole/run_dehb_cartpole.py --run_id $SLURM_ARRAY_TASK_ID --verbose True --iter 130 --output_path dehb/examples/cartpole/results/ \
     --folder "dehb_"$boundary --boundary_fix_type $boundary
