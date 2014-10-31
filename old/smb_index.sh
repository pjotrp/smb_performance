#!/bin/bash

for y in 1 2 3 ; do
  echo samtools index data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam
  time ~/opt/bin/samtools index data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam
  for x in 47 31 15 7 3 1 0 ; do
    cmd="$HOME/opt/bin/sambamba index -t $x data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam"
    echo $y $x $cmd
    time `$cmd`
  done
done

