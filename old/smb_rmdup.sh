#!/bin/bash

for y in 1 2 3 ; do
  cmd1="$HOME/opt/samtools-0.1.19/samtools rmdup data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam $HOME/sam_rmdup.bam"
  time `$cmd1`
  for x in 47 31 15 7 3 1 0 ; do
    cmd="$HOME/opt/bin/sambamba markdup --nthreads=$x -r data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam ~/smb_rmdup.bam"
    echo $y $x $cmd
    time `$cmd`
  done
done

