#!/bin/bash

FASTQ_IN=data/fastqs/SRR11909877.sampled.2k.fastq
ID=$(basename ${FASTQ_IN} .sampled.2k.fastq)

mkdir -p assembly/${ID}/flye

flye \
    --nano-hq ${FASTQ_IN} \
    --threads 2 \
    --out-dir assembly/${ID}/flye