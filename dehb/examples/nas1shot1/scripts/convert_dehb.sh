#! /bin/bash/

PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/convert_files.py --path dehb/examples/nas1shot1/results/ --algo $1 --ssp $2 --n_runs $3
