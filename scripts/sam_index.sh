#!/bin/bash
#
# ./scripts/sam_index.sh &>> results/sam_index.out

echo "Indexing with samtools"
date

. etc/environment

for t in 32 16 8 ; do
  cmd="$samtools index $bam31s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
