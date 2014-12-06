#!/bin/bash
#
# ./scripts/sam_sort.sh &>> results/sam_sort.out

echo "sorting with samtools"
date

. etc/environment

for y in 32 16 8 ; do
  cmd="$samtools sort -@ $y -m 10G $bam31s sam_sort.bam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
