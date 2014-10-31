#!/bin/bash

echo "Indexing with samtools"
. etc/environment

for y in 1 2 3 ; do
  cmd="$HOME/opt/bin/samtools index $bam16"
  time $($cmd)
done

