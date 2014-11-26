#!/bin/bash
#
# ./scripts/pic_merge.sh &>> results/pic_merge.out

echo "Merge with Picard"
date

. etc/environment

for x in 1 2 3 ; do
  cmd="java -jar $HOME/opt/picard-tools-1.119/MergeBamAlignment.jar ALIGNED_BAM=$bam31s ALIGNED_BAM=$bam32s ALIGNED_BAM=$bam23s O=pic_merge.bam"
  echo $cmd
  time $($cmd)
done

date
