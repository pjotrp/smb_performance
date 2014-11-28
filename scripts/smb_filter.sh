#!/bin/bash
#
# ./scripts/smb_filter.sh &>> results/smb_filter.out

echo "filter with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba view -t $x -F 'mapping_quality>30 and ref_id==0' -o smb_filter.sam $bam31s"
  echo $cmd
  /usr/bin/time -v $sambamba view -t $x -F 'mapping_quality>30 and ref_id==0' -o smb_filter.sam $bam31s
done

date
