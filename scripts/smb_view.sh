#!/bin/bash
#
# ./scripts/smb_view.sh &>> results/smb_view.out

echo "view with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba view -t $x $bam31s -o smb_view.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
