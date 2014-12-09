#!/bin/bash
#
# ./scripts/smb_depth.sh &>> results/smb_depth.out

echo "depth with sambamba"
date

. etc/environment

for x in 31 ; do
  cmd="$sambamba depth base -t 32 -q 1 --combined HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam_chr1.bam -o HG00110-depth.txt"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
