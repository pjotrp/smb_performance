#!/bin/bash
#
# ./scripts/smb_cram2bam.sh &>> results/smb_cram2bam.out

echo "cram2bam with sambamba"
date

. etc/environment

for t in 47 31 15 7 ; do
  cmd="$sambamba view -t $t -C $cram4s -o smb_cram2bam.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
