#!/bin/bash

export LD_LIBRARY_PATH=$HOME/opt/lib

mkdir -p $HOME/tmp
infilen=$HOME/tmp/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam
cp -vau $HOME/data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam $infilen

# Sort on position (compression level 1)

for y in 1 2 3 ; do
  for x in 47 31 15 7 3 1 0 ; do
    cmd="$HOME/opt/bin/sambamba sort -t $x -m 180G $infilen -o smb_sort_test$y_$x.bam"
    echo $y $x $cmd
    time `$cmd`
  done
  for x in 4 2 1 ; do
    cmd1="$HOME/opt/bin/samtools sort -@ $x -l 1 $infilen -o samtools_sort_test$y_$x.bam" 
    echo $y $x $cmd1
    time `$cmd1`
  done
done

