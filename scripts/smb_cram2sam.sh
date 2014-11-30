#!/bin/bash
#
# ./scripts/smb_cram2sam.sh &>> results/smb_cram2sam.out

echo "cram2sam with sambamba"
date

. etc/environment

for t in 47 31 15 7 ; do
  cmd="$sambamba view -t $t -C $cram4s -o smb_cram2sam.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
