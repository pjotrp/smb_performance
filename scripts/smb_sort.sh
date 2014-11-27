#!/bin/bash
#
# ./scripts/smb_sort.sh &>> results/smb_sort.out

echo "sort with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba sort -t $x -m 180G $bam31s -o smb_sort_test$y_$x.bam"
  echo $cmd
  /usr/bin/time -v $($cmd)
done

date
