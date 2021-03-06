% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_fastq.R
\name{get_fastq}
\alias{get_fastq}
\title{Download fastq files}
\usage{
get_fastq(srr_id, library_layout = c("SINGLE", "PAIRED"),
  use_sra_file = FALSE, sra_files_dir = NULL, n_thread, destdir)
}
\arguments{
\item{srr_id}{SRA run accession ID.}

\item{library_layout}{layout of the library used. Either 
\code{'SINGLE'} or \code{'PAIRED'}.}

\item{use_sra_file}{logical, whether to use downloaded SRA
files to get fastq files or directly download
fastq files.}

\item{sra_files_dir}{directory where SRA files are saved.
If you use \code{use_sra_file=FALSE} then \code{sra_files_dir=NULL}.}

\item{n_thread}{number of cores to use.}

\item{destdir}{directory where all the results will be saved.}
}
\value{
A single fastq file will be generated for SINGLE end
reads and two files for PAIRED end reads.
}
\description{
\code{get_fastq} downloads fastq files using SRA toolkit. 
We recommend using Aspera for fast downloading. You need to 
install Aspera for using \code{ascp} option.
}
\examples{

\donttest{
get_fastq(srr_id="SRR5890521",library_layout="SINGLE",
use_sra_file=FALSE,sra_files_dir=NULL,n_thread=2,
destdir=tempdir())
}

}
