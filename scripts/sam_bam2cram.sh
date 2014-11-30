#!/bin/bash
#
# ./scripts/sam_bam2cram.sh &>> results/sam_bam2cram.out

echo "bam2craming with samtools"
date

. etc/environment

outfn=sam_bam2cram.cram
for t in 32 16 8 ; do
  cmd="$samtools view -@ $t $bam31s -C -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -lh $outfn
done

date
