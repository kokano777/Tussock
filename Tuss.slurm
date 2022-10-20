#!/bin/bash

#SBATCH --job-name="Tussock"
#SBATCH --partition=t1standard
#SBATCH --ntasks=24
#SBATCH --tasks-per-node=24
#SBATCH --time=00:30:00
#SBATCH --mail-user=kokano@alaska.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output="Tussock_%j"

ulimit -s unlimited
ulimit -l unlimited

module list

module purge
module load slurm

cd /center1/COMPSKILL/kokano/midterm

mv IC_Tus_2018.csv Tus_2018.csv;
input=$(ls IC_Tus_20*.csv);
sed "/mol/d" Tus_2018.csv > Tus_all.csv;
echo "$input"
for i in $input; do
echo "$i" | sed "/FC/d" $i >> Tus_all.csv;
done
sed "/mol/d" Tus_all.csv > Tus_all_1.csv;
awk 'BEGIN {FS=","}; {print $1, $2, $3, $(10), $(17), $(21), $(39), $(42), $(45), $(48), $(50), $(55), $(56), $(57), $(64), $(65), $(66), $(68), $(69), $(70), $(71), $(74), $(81), $(83), $(85), $(86), $(87)}' Tus_all_1.csv >Tus_all_2.csv
sed "s/-9999/NA/g" Tus_all_2.csv > Tus_all_clean.csv
rm Tus_all_1.csv Tus_all_2.csv Tus_all.csv

sleep 55
