#!/bin/bash
#
# ./scripts/smb_cram2sam.sh &>> results/smb_cram2sam.out
#
# To run on tmpfs create
#
#   mount -t tmpfs -o size=128g tmpfs /mnt/ramdisk

echo "cram2sam with sambamba"
date

. etc/environment

for t in 47 31 15 7 3 0; do
  # outfn=/mnt/ramdisk/smb_cram2sam_$t.sam
  rm /mnt/ramdisk/*
  outfn=/mnt/ramdisk/smb_cram2sam.sam
  cmd="$sambamba view -t $t -C $cram10s -o $outfn"
  echo $cmd
  $(/usr/bin/time -v $cmd)
  ls -l $outfn
done

date
