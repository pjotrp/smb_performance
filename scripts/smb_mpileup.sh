#!/bin/bash
#
# ./scripts/smb_mpileup.sh &>> results/smb_mpileup.out

echo "mpileup with sambamba"
date

. etc/environment

for x in 47 31 15 7 ; do
  cmd="$sambamba mpileup -t $x -o smb_mpileup.mpileup $mpileup_files --bcftools"
  # cmd="$sambamba mpileup -t $x -o smb_mpileup.mpileup $bam31s --bcftools"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
