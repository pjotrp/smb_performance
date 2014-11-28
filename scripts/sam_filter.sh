#!/bin/bash
#
# ./scripts/sam_filter.sh &>> results/sam_filter.out

echo "filtering with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools view -q 30 $bam31s 1 -o sam_filter.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
