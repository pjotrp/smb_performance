#!/bin/bash
#
# ./scripts/smb_filter.sh &>> results/smb_filter.out

echo "filter with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba view -t $x -F 'mapping_quality>30' -o smb_filter.sam $bam31s 1"
  echo $cmd
  /usr/bin/time -v $sambamba view -t $x -F 'mapping_quality>30' -o smb_filter.sam $bam31s 1
done

date
