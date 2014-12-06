#!/bin/bash
#
# ./scripts/smb_sort.sh &>> results/smb_sort.out

echo "sort with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba sort -t $x --memory-limit=50000000000 $bam31s -o smb_sort.bam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
