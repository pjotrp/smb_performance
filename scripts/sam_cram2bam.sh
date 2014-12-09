#!/bin/bash
#
# ./scripts/sam_cramcram2bam.sh &>> results/sam_cramcram2bam.out

echo "cramcram2baming with samtools"
date

. etc/environment

for y in 1 2 3 ; do
  cmd="$samtools cram2bam $cram10s"
  echo $cmd
  $(/usr/bin/time -v $cmd)
done

date
