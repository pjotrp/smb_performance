#!/bin/bash
#
# ./scripts/smb_cramindex.sh &>> results/smb_cramindex.out

echo "cramindex with sambamba"
date

. etc/environment

for t in 47 31 15 7 ; do
  cmd="$sambamba index -t $t -C $cram4s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
