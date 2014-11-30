#!/bin/bash
#
# ./scripts/smb_cramindex.sh &>> results/smb_cramindex.out

echo "cramindex with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba index -t 10 -C $cram4s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
