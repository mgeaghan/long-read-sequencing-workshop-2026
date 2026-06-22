#!/bin/bash

FASTQ=data/fastqs/SRR11909877.fastq

mkdir -p qc/nanoplot

NanoPlot \
    --fastq ${FASTQ} \
    --loglength \
    -o qc/nanoplot_fastq
