#!/bin/bash
#
# ./scripts/smb_index.sh &>> results/smb_index.out

echo "Indexing with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba index -t $x $bam31s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
