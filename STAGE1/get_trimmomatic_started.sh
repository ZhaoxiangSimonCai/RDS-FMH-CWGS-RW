#
# ./STAGE1/get_trimmomatic_started.sh
#

#!/bin/bash 

samples=$(ls RawFiles)

for name in $samples; do
    A=$(qsub -v sm=$name STAGE1/1_HPC_hg38_TRIMMOMATIC.pbs) 
    echo $name $A
done;