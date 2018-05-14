#
# ./STAGE1/2.sh <INPUT> <SAMPLE_TXT>
#

#!/bin/bash 

samples=$(cat $2)

for name in $samples; do
    A=$(qsub -v in=$1 -v sm=$name STAGE1/1_HPC_hg38_TRIMMOMATIC.pbs) 
    echo $name $A
done;
