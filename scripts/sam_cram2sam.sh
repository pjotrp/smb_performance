#!/bin/bash
#
# ./scripts/sam_cram2sam.sh &>> results/sam_cram2sam.out

echo "cram2saming with samtools"
date

. etc/environment

for t in 32 16 8 ; do
  cmd="$samtools view -@ $t $cram4s -o sam_cram2sam.sam"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
