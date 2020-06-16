#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J rl_re
#SBATCH -p bosch_cpu-cascadelake

PYTHONPATH=$PWD python3 dehb/examples/cartpole/run_re_cartpole.py --run_id $SLURM_ARRAY_TASK_ID --n_iters 150 --output_path dehb/examples/cartpole/results/

