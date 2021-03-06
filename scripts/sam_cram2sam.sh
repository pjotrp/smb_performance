#!/bin/bash
#
# ./scripts/sam_cram2sam.sh &>> results/sam_cram2sam.out

echo "cram2saming with samtools"
date

. etc/environment

for t in 48 32 16 8 4 1 ; do
# for t in 4 1 ; do
  # outfn=sam_cram2sam_$t.sam
  rm /mnt/ramdisk/*
  outfn=/mnt/ramdisk/sam_cram2sam.sam
  cmd="$samtools view -@ $t $cram10s -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -l $outfn
done

date
