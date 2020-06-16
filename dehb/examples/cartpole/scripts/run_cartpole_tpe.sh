#! /bin/bash

#SBATCH -a 1-50
#SBATCH -J rl_tpe
#SBATCH -p bosch_cpu-cascadelake


PYTHONPATH=$PWD python3 dehb/examples/cartpole/cartpole.py --num_iterations 50 --run_id $SLURM_ARRAY_TASK_ID --method tpe --dest_dir ~/DE_NAS/DEHB/dehb/examples/cartpole/results/ --min_budget 1 --max_budget 9


