#!/bin/bash
#
# ./scripts/smb_bam2cram.sh &>> results/smb_bam2cram.out

echo "bam2cram with sambamba"
date

. etc/environment


for t in 46 31 15 7 3 0; do
  outfn=smb_bam2cram_$t.cram
  cmd="$sambamba view -t $t --format=cram $bam31s -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -l $outfn
done

date
