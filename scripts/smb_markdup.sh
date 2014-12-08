#!/bin/bash
#
# ./scripts/smb_markdup.sh &>> results/smb_markdup.out

echo "Markdup with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba markdup -t $x -r --overflow-list-size 5000000 $bam31s smb_rmdup.bam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
