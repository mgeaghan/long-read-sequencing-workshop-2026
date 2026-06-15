#!/bin/bash

FASTQ_IN=trim_filter/SRR11909877.trim_filter.fastq
ID=$(basename ${FASTQ_IN} .trim_filter.fastq)
K2DB=data/ref/kraken2_db

mkdir contamination

kraken2 \
    ${FASTQ_IN} \
    --db ${K2DB} \
    --report contamination/report/${ID}.k2report \
    --report-minimizer-data \
    --minimum-hit-groups 3 \
    --threads 2 \
    --output contamination/${ID}_k2_out.txt
