#! /bin/bash

#SBATCH -a 0-49
#SBATCH -J rl_de
#SBATCH -p bosch_cpu-cascadelake

PYTHONPATH=$PWD python3 dehb/examples/cartpole/run_de_cartpole.py --run_id $SLURM_ARRAY_TASK_ID --verbose True --folder de_pop10 --gens 20 --output_path dehb/examples/cartpole/results/ --pop_size 10
