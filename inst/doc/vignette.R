## ------------------------------------------------------------------------
#dataset
geo_series_acc="GSE107363"

## ------------------------------------------------------------------------
# SRA run id
srr_id="SRR6324192"

## ------------------------------------------------------------------------
# Species
species="human"

## ---- eval=FALSE---------------------------------------------------------
#  options(warn=-1)
#  #Step 1: get metadata
#  library(GREP2)
#  get_metadata(geo_series_acc="GSE107363")
#  
#  #Step 2: Get SRA data files
#  get_srr(srr_id="SRR6324192", destdir="/mnt/raid/test", ascp=TRUE,
#  prefetch_workspace="/mnt/raid/test/prefetch_workspace",
#  ascp_path="~/.aspera")
#  
#  # Step 3: Get fastq files
#  get_fastq(srr_id="SRR6324192", library_layout="SINGLE", get_sra_file=FALSE,
#  sra_files_dir=NULL, n_thread=2, destdir="/mnt/raid/test")
#  
#  # Step 4: Run FastQC
#  run_fastqc(destdir="/mnt/raid/test",
#  fastq_dir="/mnt/raid/test/GSE107363/SRR6324192", n_thread=2)
#  
#  # Step 5: Run Trimmomatic
#  
#  trim_fastq(srr_id="SRR6324192",
#  fastq_dir="/mnt/raid/test/GSE107363/SRR6324192", instrument="HiSeq",
#  trimmomatic_path="path_to_trimmomtic",
#  library_layout="SINGLE", n_thread=2)
#  
#  # Step 6: Run Salmon and tximport
#  run_salmon(srr_id="SRR6324192", library_layout="SINGLE", index_dir=
#               "path_to_index_dir",destdir=".",
#             fastq_dir="path_to_fastq_dir",
#             use_trimmed_fastq=FALSE,other_opts=NULL, n_thread=2)
#  
#  run_tximport(srr_id="SRR6324192", species="human",
#  salmon_dir="path_to_salmon_files_dir",
#               countsFromAbundance = "lengthScaledTPM")
#  
#  # Step 7: Run MultiQC
#  run_fastqc(destdir="/mnt/raid/test",
#             fastq_dir="path_to_fatsq_dir", n_thread=2)
#  
#  # You can also run the whole pipeline using the following function:
#  process_geo_rnaseq (geo_series_acc="GSE107363", destdir=".", ascp=TRUE,
#                      prefetch_workspace="./prefetch_workspace",
#                      ascp_path="~/.aspera",
#                      get_sra_file=FALSE, trim_fastq=FALSE,
#                      trimmomatic_path=NULL,
#                      index_dir="./human_transcripts_release92_index",
#                      other_opts=NULL,species="human",
#                      countsFromAbundance = "lengthScaledTPM", n_thread=2)

