#!/bin/bash
#
# ./scripts/sam_index.sh &>> results/sam_index.out

echo "Indexing with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$HOME/opt/bin/samtools index $bam31s"
  echo $cmd
  time $($cmd)
done

date
