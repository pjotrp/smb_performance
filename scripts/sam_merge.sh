#!/bin/bash
#
# ./scripts/sam_merge.sh &>> results/sam_merge.out

echo "merge with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools merge -f $HOME/sam_merge.bam $merge_files"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
