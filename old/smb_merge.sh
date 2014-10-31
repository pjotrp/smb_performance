#!/bin/bash

files="data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam data/1000genomes/HG00122.mapped.ILLUMINA.bwa.GBR.low_coverage.20121211.bam data/1000genomes/HG00252.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam"

for y in 1 2 3 ; do
  cmd1="$HOME/opt/samtools-0.1.19/samtools merge -f samtools_merge_$y.bam $files"
  echo $cmd1
  time `$cmd1`
  for x in 47 31 15 7 3 1 0 ; do
    cmd="$HOME/opt/bin/sambamba merge --nthreads=$x smb_merge_$x.bam $files"
    echo $y $x $cmd
    time `$cmd`
  done
done

