## ------------------------------------------------------------------------
#dataset
geo_series_acc="GSE102170"
# SRA run id
srr_id="SRR5890521"
# Species
species="human"

## ---- eval=FALSE---------------------------------------------------------
#  options(warn=-1)
#  #Step 1: get metadata
#  library(GREP2)
#  get_metadata(geo_series_acc="GSE102170",destdir=tempdir(),
#  geo_only=FALSE,download_method="auto")
#  
#  #Step 2: Get SRA data files
#  get_srr(srr_id="SRR5890521", destdir=tempdir(), ascp=FALSE,
#  prefetch_workspace=NULL,ascp_path=NULL)
#  
#  # Step 3: Get fastq files
#  get_fastq(srr_id="SRR5890521",library_layout="SINGLE",
#  use_sra_file=FALSE,sra_files_dir=NULL,n_thread=2,
#  destdir=tempdir())
#  
#  # Step 4: Run FastQC
#  run_fastqc(destdir=tempdir(),fastq_dir=tempdir(),
#  n_thread=2)
#  
#  # Step 5: Run Trimmomatic
#  trim_fastq(srr_id="SRR5890521",fastq_dir=tempdir(),
#  instrument="MiSeq",library_layout="SINGLE",
#  destdir=tempdir(),n_thread=2)
#  
#  # Step 6: Run Salmon and tximport
#  # Before running Salmon, you will have to build index first.
#  build_index(species="human",kmer=31,ens_release=92,
#  destdir=tempdir())
#  # Run Salmon
#  run_salmon(srr_id="SRR5890521",library_layout="SINGLE",
#  index_dir=tempdir(),destdir=tempdir(),
#  fastq_dir=tempdir(),use_trimmed_fastq=FALSE,
#  other_opts=NULL,n_thread=2)
#  # Run tximport
#  run_tximport(srr_id="SRR5890521", species="human",
#  salmon_dir=tempdir(),countsFromAbundance="lengthScaledTPM")
#  
#  # Step 7: Run MultiQC
#  run_multiqc(fastqc_dir=tempdir(),salmon_dir=tempdir(),
#  destdir=tempdir())
#  
#  # All of the above steps are combined into the following single function. We would recommend using this function for processing GEO RNA-seq data.
#  process_geo_rnaseq (geo_series_acc=geo_series_acc,destdir=tempdir(),
#  download_method="auto",
#  ascp=FALSE,prefetch_workspace=NULL,
#  ascp_path=NULL,use_sra_file=FALSE,trim_fastq=FALSE,
#  index_dir=tempdir(),species="human",
#  countsFromAbundance="lengthScaledTPM",n_thread=1)

