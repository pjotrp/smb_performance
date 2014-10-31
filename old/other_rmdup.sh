#!/bin/bash

samblaster=$HOME/opt/bin/samblaster
sambamba=$HOME/opt/bin/sambamba

cmd="$sambamba view -h /home/pjotr/data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam | $samblaster -r|$sambamba view --format=bam -o test.bam -S /dev/stdin"

for y in 1 2 3 ; do
  echo $cmd
  time $sambamba view -h /home/pjotr/data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam | $samblaster -r|$sambamba view --format=bam -o test.bam -S /dev/stdin

  for x in 47 31 15 7 3 1 0 ; do
    cmd2="$sambamba markdup -t $x -r --overflow-list-size 500000 $HOME/data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam ~/smb_rmdup.bam"
    echo $y $x $cmd2
    time $sambamba markdup -t $x -r --overflow-list-size 500000 $HOME/data/1000genomes/HG00110.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam ~/smb_rmdup.bam
  done
done

