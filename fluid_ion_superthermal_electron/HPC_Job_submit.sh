#! /bin/bash
#$ -N RUN
#$ -cwd
#$ -q all.q
#$ -pe make 1
#$ -M ablotekar@gmail.com
#$ -m abe
#$ -e Err.$JOB_NAME.$JOB_ID
#$ -o Out.$JOB_NAME.$JOB_ID
/opt/intel/impi/4.1.3.048/intel64/bin/mpirun ./RUN
