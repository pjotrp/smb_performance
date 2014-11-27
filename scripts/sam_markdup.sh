#!/bin/bash
#
# ./scripts/sam_markdup.sh &>> results/sam_markdup.out

echo "markduping with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools0119 rmdup $bam31s $HOME/sam_rmdup.bam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
