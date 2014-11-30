#!/bin/bash
#
# ./scripts/smb_cram2bam.sh &>> results/smb_cram2bam.out

echo "cram2bam with sambamba"
date

. etc/environment

for t in 47 31 15 7 ; do
  cmd="$sambamba view -t $t -C $cram4s --format=bam -o smb_cram2bam.bam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
