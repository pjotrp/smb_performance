#!/bin/bash
#
# ./scripts/smb_index.sh &>> results/smb_index.out

echo "Indexing with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$HOME/opt/bin/sambamba index -t $x $bam31s"
  echo $cmd
  time $($cmd)
done

date
