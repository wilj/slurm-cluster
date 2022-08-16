#!/bin/bash
#
#SBATCH --job-name=test
#SBATCH --output=result.out
#
#SBATCH --nodes 2
#SBATCH --tasks-per-node 3


sbcast -f test.py /tmp/test.py
srun python3 /tmp/test.py