#!/bin/bash

FASTQ=data/fastqs/SRR11909877.fastq

mkdir -p qc/fastqc

fastqc \
    -f fastq \
    -o qc/fastqc \
    ${FASTQ}
