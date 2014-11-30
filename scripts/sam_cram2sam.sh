#!/bin/bash
#
# ./scripts/sam_cram2sam.sh &>> results/sam_cram2sam.out

echo "cram2saming with samtools"
date

. etc/environment

for t in 32 16 8 ; do
  outfn=sam_cram2sam_$t.sam
  cmd="$samtools view -@ $t $cram4s -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -l $outfn
done

date
