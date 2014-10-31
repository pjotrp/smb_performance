#!/bin/bash
#
# ./scripts/pic_index.sh &>> results/pic_index.out

echo "Indexing with Picard"
date

. etc/environment

for x in 1 2 3 ; do
  cmd="java -jar ~/opt/picard-tools-1.119/BuildBamIndex.jar I=$bam31s"
  echo $cmd
  time $($cmd)
done

date
