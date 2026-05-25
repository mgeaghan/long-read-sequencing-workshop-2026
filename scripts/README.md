# Workshop scripts

This directory contains all of the final scripts we will build during the workshop. The scripts make up a complete workflow from FASTQ quality control, through genome assembly, and to antimicrobial resistance gene detection and plasmid analysis. The scripts are:

1. `01.run_qc.sh`: Initial sequencing run QC with pycoQC.
2. `02.fastq_qc.sh`: Initial FASTQ quality control with FASTQC, NanoPlot, and MultiQC.
3. `03.trim_filter.sh`: Read trimming and filtering to remove adapters and low-quality bases/reads using fastplong.
4. `04.contamination.sh`: Contamination assessment with Kraken2.
    1. `04b.contamination_removal.sh`: Host read removal by aligning to human genome and removing aligned reads.
5. `05.assembly.sh`: Genome assembly with Flye.
    1. `05b.alt_assembly.raven.sh`: Additional genome assembly with Raven.
    2. `05b.alt_assembly.canu.sh`: Additional genome assembly with Canu.
6. `06.plasmid.sh`: Plasmid assembly with Plassembler (and Flye assembly from previous step).
7. `07.consensus.sh`: Consensus assembly creation with Autocycler.
8. `08.assembly_qc.sh`: Assembly quality control and visualisation with QUAST, BUSCO, MultiQC, and Bandage.
9. `09.polish.sh`: Assembly polishing with Medaka.
10. `10.amr_gene_detection.sh`: Detect antimicrobial resistance (AMR) and virulence genes with AMRFinderPlus and ABRicate.
11. `11.plasmid_comparison.sh`: Perform a multiple sequence alignment on the plasmid sequences to detect similarities.
12. `12.strain_id.sh`: Identify bacterial strains with cgMLST.
