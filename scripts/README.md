# Workshop scripts

This directory contains all of the final scripts we will build during the workshop. The scripts make up a complete workflow from FASTQ quality control, through genome assembly, and to antimicrobial resistance gene detection and plasmid analysis. The scripts are:

0. `00.multiqc.sh`: MultiQC script for compiling all outputs into one report.
1. `01.nanoplot_summary.sh`: Initial sequencing run QC using a sequencing summary file as input.
2. Initial FASTQ quality control:
    1. `02.a.nanoplot_fastq.sh`: Initial FASTQ quality control with NanoPlot.
    2. `02.b.fastqc.sh`: Initial FASTQ quality control with FASTQC.
3. `03.trim_filter.sh`: Read trimming and filtering to remove adapters and low-quality bases/reads using fastplong.
4. `04.a.contamination.sh`: Contamination assessment with Kraken2.
    1. `04.b.remove_contamination.sh`: Host read removal by aligning to human genome and removing aligned reads.
5. Genome assembly:
    1. `05.a.assembly.flye.sh`: Main genome assembly with Flye.
    2. `05.b.assembly.plassembler.sh`: Plasmid assembly with Plassembler.
    3. `05.c.assembly.raven.sh`: Alternate genome assembly with Raven.
6. `06.consensus.sh`: Consensus assembly creation with Autocycler.
7. `07.assembly_qc.sh`: Assembly quality control and visualisation with QUAST, BUSCO, MultiQC, and Bandage.
8. `08.polish.sh`: Assembly polishing with Medaka.
9. `09.amr_gene_detection.sh`: Detect antimicrobial resistance (AMR) and virulence genes with AMRFinderPlus and ABRicate.
10. `10.plasmid_comparison.sh`: Perform a multiple sequence alignment on the plasmid sequences to detect similarities.
11. `11.strain_id.sh`: Identify bacterial strains with cgMLST.

## Container images

The following container images are being used for each tool:

| Tool | Image URL |
| ---- | --------- |
| MultiQC | docker://quay.io/biocontainers/multiqc:1.35--pyhdfd78af_1 |
| NanoPlot | docker://quay.io/biocontainers/nanoplot:1.46.2--pyhdfd78af_1 |
| FastQC | docker://quay.io/biocontainers/fastqc:0.11.9--0 |
| fastplong | docker://quay.io/biocontainers/fastplong:0.4.1--h224cc79_0 |
| Kraken2 | docker://quay.io/biocontainers/kraken2:2.17.1--pl5321h077b44d_0 |
| Flye | docker://quay.io/biocontainers/flye:2.9.6--py313h7fbb527_1 |
| Plassembler | docker://quay.io/biocontainers/plassembler:1.8.2--pyhdfd78af_0 |

## Databases

The following tools require databases:

| Tool | Database Location | Notes |
| ---- | ----------------- | ----- |
| Kraken2 | //cvmfs/data.galaxyproject.org/managed/kraken2_databases/kalamari | Kalamari database is curated and only 2GB in size, which is suitable for the workshop, while the standard Kraken2 database is ~60GB in size and can't fit into memory on the VMs. |
| Plassembler | N/A | Download with `plassembler download -d <db directory>`. Size is 437MB, can be pre-loaded on the VMs. |
