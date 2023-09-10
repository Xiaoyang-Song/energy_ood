#!/bin/bash
# Environment Configuration
export PYTHONPATH=$PYTHONPATH$:`pwd`

# sbatch ft_job_cs.sh
sbatch ft_job_sv.sh
# sbatch ft_job_m.sh
sbatch ft_job_fm.sh
# sbatch ft_job_mfm.sh