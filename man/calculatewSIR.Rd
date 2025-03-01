% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculatewSIR.R
\name{calculatewSIR}
\alias{calculatewSIR}
\title{calculatewSIR}
\usage{
calculatewSIR(
  x,
  assay.type = "logcounts",
  dimred = NULL,
  colData_columns = NULL,
  spatialCoords = FALSE,
  ...
)
}
\arguments{
\item{x}{A numeric matrix of normalised gene expression data where rows are
features and columns are cells. Alternatively, a SingleCellExperiment or
SpatialExperiment containing such a matrix}

\item{assay.type}{if \code{x} is a SingleCellExperiment of SpatialExperiment then
this is the assay for which wSIR will be calculated. Default "logcounts".}

\item{dimred}{String or integer scalar specifying the dimensionality reduction
slot for which to use for the slicing mechanism. Ignored if \code{coords} given.}

\item{colData_columns}{character vector specifying the subset of colData
columns to be used for the wSIR slicing mechanism. Ignored if \code{coords} or
\code{dimred} given}

\item{spatialCoords}{logical indicating if spatialCoords should be used for
the wSIR slicing mechanism. Ignored if \code{coords}, \code{dimred}, or
\code{colData_columns} given, or if \code{x} is not a SpatialExperiment object.}

\item{...}{arguments passing to \code{wSIR}}
}
\value{
A wSIR object
}
\description{
Perform wSIR on cells, based on the expression data and a reducedDim in a
SingleCellExperiment or SpatialExperiment object
}
\examples{
data(MouseData)
library(SingleCellExperiment)
sce = SingleCellExperiment(assays = list(logcounts = t(sample1_exprs)),
reducedDims = list(spatial = sample1_coords))

obj = calculatewSIR(x = sce,
  dimred = "spatial")

}
