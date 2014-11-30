#!/bin/bash
#
# ./scripts/sam_merge.sh &>> results/sam_merge.out

echo "merge with samtools"
date

. etc/environment

for t in 32 16 8 ; do
  cmd="$samtools merge -@ $t -f $HOME/sam_merge.bam $merge_files"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
