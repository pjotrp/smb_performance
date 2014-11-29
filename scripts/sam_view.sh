#!/bin/bash
#
# ./scripts/sam_view.sh &>> results/sam_view.out

echo "viewing with samtools"
date

. etc/environment

for y in 32 16 8 ; do
  cmd="$samtools view -@ $y $bam31s -o sam_view.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
