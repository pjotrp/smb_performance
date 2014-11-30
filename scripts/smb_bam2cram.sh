#!/bin/bash
#
# ./scripts/smb_bam2cram.sh &>> results/smb_bam2cram.out

echo "bam2cram with sambamba"
date

. etc/environment

for t in 46 31 15 7 ; do
  cmd="$sambamba view -t $t --format=cram $bam31s -o smb_bam2cram.cram"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
