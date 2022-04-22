#!/bin/bash

data_dir=/home/rob/Data/24D_BC400s3

this_dir=`pwd`
#for del_z in $(seq 1.0 0.5 10.0)
#do
#	
#	gmx editconf -f ${data_dir}/24d_bc400s3.pdb -o 24D_BC400s3_"${del_z}".pdb -translate 0 0 ${del_z} 
#	echo 0 | gmx trjconv -f 24D_BC400s3_"${del_z}".pdb -o 24D_BC400s3_"${del_z}"_reimaged.pdb -s ${data_dir}/24D_BC400s3.tpr -pbc mol 
#done

del_z=6.5
#gmx editconf -f ${data_dir}/24D_BC400s3.gro -o 24D_BC400s3_"${del_z}".gro -translate 0 0 ${del_z} 
echo 0 | gmx trjconv -f ${data_dir}/24D_BC400s3.xtc -o 24D_BC400s3_no_nump.xtc -s ${data_dir}/24D_BC400s3.tpr -pbc nojump 

#gmx trjconv -f 24D_BC400s3_${del_z}_reimaged.xtc -o 24D_BC400s3_${del_z}_no_jump.xtc -s 24D_BC400s3_${del_z}.gro -pbc nojump 
