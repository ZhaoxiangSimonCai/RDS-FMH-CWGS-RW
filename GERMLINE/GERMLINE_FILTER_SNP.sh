#!/bin/bash 

file=$1
samples=$(cat $file)

for name in $samples; do
    GATK=$(qsub -v sampleID=$name GERMLINE/GERMLINE_FILTER_SNP.pbs)
    echo $name $GATK
done;