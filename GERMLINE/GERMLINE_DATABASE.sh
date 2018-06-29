#!/bin/bash

#PBS -l walltime=72:00:00
#PBS -P RDS-FMH-CWGS-RW
#PBS -l select=1:ncpus=1:mem=32GB
#PBS -q defaultQ

cd /scratch/RDS-FMH-CWGS-RW/Sources
module load python
python OTHERS/ANNOTATION_SQL.py OTHERS/ANNOTATION.sql 6 6/6.csv
zip 6/6.zip 6/6.csv
