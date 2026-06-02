#!/bin/bash

FASTQ_IN=data/fastqs/SRR11909877.fastq
ID=$(basename ${FASTQ_IN} .fastq)

mkdir trim_filter
mkdir qc/fastplong

fastplong \
    -i ${FASTQ_IN} \
    -o trim_filter/${ID}.trim_filter.fastq \
    -h qc/fastplong/${ID}.fastplong_report.html \
    -j qc/fastplong/${ID}.fastplong_report.json
