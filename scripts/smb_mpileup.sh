#!/bin/bash
#
# ./scripts/smb_mpileup.sh &>> results/smb_mpileup.out

echo "mpileup with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba mpileup -t $x -o smb_mpileup.mpileup $mpileup_files --samtools -f $refgenome -gu -S -D -d 1000 -L 1000 -m 3 -F 0.0002 --bcftools"
  # cmd="$sambamba mpileup -t $x -o smb_mpileup.mpileup $bam31s --samtools -f $refgenome -gu -S -D -d 1000 -L 1000 -m 3 -F 0.0002 --bcftools"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
