#!/bin/bash
#
# ./scripts/sam_cramindex.sh &>> results/sam_cramindex.out

echo "cramindexing with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools index $cram4s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
