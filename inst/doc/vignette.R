## ------------------------------------------------------------------------
#dataset
geo_series_acc="GSE102170"
# Species
species="human"

## ---- eval=FALSE---------------------------------------------------------
#  options(warn=-1)
#  #Step 1: get metadata
#  library(GREP2)
#  metadata <- get_metadata(geo_series_acc="GSE102170",destdir=tempdir(),
#  geo_only=FALSE,download_method="auto")
#  
#  #Step 2: Get SRA data files
#  srr_id <- metadata$metadata_sra$Run
#  for(i in 1:length(srr_id)){
#  	get_srr(srr_id=srr_id[i], destdir=tempdir(), ascp=FALSE,
#  	prefetch_workspace=NULL,ascp_path=NULL)
#  }
#  
#  # Step 3: Get fastq files
#  library_layout <- metadata$metadata_sra$LibraryLayout
#  for(i in 1:length(srr_id)){
#  	get_fastq(srr_id=srr_id[i],library_layout=library_layout[i],
#  	use_sra_file=FALSE,sra_files_dir=NULL,n_thread=2,
#  	destdir=tempdir())
#  }
#  
#  # Step 4: Run FastQC
#  run_fastqc(destdir=tempdir(),fastq_dir=tempdir(),
#  n_thread=2)
#  
#  # Step 5: Run Trimmomatic
#  for(i in 1:length(srr_id)){
#  	trim_fastq(srr_id=srr_id[i],fastq_dir=tempdir(),
#  	instrument="MiSeq",library_layout=library_layout[i],destdir=tempdir(),n_thread=2)
#  }
#  
#  # Step 6: Run Salmon and tximport
#  # Before running Salmon, you will have to build index first.
#  build_index(species="human",kmer=31,ens_release=92,
#  destdir=tempdir())
#  # Run Salmon
#  for(i in 1:length(srr_id)){
#  	run_salmon(srr_id=srr_id[i],library_layout=library_layout[i],
#  	index_dir=tempdir(),destdir=tempdir(),
#  	fastq_dir=tempdir(),use_trimmed_fastq=FALSE,
#  	other_opts=NULL,n_thread=2)
#  }
#  # Run tximport
#  counts_list <- run_tximport(srr_id=srr_id, species="human",
#  salmon_dir=paste0(tempdir(),"/salmon"),countsFromAbundance="lengthScaledTPM")
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

