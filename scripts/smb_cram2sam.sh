#!/bin/bash
#
# ./scripts/smb_cram2sam.sh &>> results/smb_cram2sam.out

echo "cram2sam with sambamba"
date

. etc/environment

for t in 47 31 15 7 ; do
  outfn=smb_cram2sam_$t.sam
  cmd="$sambamba view -t $t -C $cram4s -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -l $outfn
done

date
