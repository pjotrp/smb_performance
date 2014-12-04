#!/bin/bash
#
# ./scripts/sam_mpileup.sh &>> results/sam_mpileup.out

echo "mpileuping with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools mpileup --VCF -o sam_mpileup.vcf -f $refgenome -q 1 $mpileup_files"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
