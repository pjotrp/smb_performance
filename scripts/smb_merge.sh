#!/bin/bash
#
# ./scripts/smb_merge.sh &>> results/smb_merge.out

echo "merge with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba merge -t $x $HOME/smb_merge.bam $merge_files"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
