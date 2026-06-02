#!/bin/bash

SEQ_SUMMARY=data/sequencing_summary.txt

mkdir -p qc/pycoqc

pycoqc \
    -f ${SEQ_SUMMARY} \
    -o qc/pycoqc/pycoqc_report.html \
    -j qc/pycoqc/pycoqc_report.json
