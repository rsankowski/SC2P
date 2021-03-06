\name{visGene}
\alias{visGene}

\title{
Visualize gene expression pattern in scRNA-seq
}
\description{

}
\usage{
visGene(names, sc2p.obj, group.name = NULL, low.prob = 0.99, show.name = TRUE, show.points = T, all.points = T, annotation = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{Character for the name of a gene.}
  \item{sc2p.obj}{An object of sc2pSet, result from the eset2Phase
	function.} 
  \item{group.name}{Character for the name of factors indicating the
	experimental conditions. This has to be the name of a column in
    pData(sc2p.obj) data frame.
}
  \item{low.prob}{
	?????????????
  }
  \item{show.name}{Logical to indicate whether to show the name of genes
	as the tileof the figure.
  }
  \item{show.points}{
	???????????????????
  }
  \item{all.points}{
	???????????????????
  }
  \item{annotation}{
	???????????????????
  }
}


\details{
  
}

\author{
  Zhijin (Jean) Wu <zwu@stat.brown.edu>
}


\seealso{
  eset2Phase, twoPhaseDE, topGene
}
\examples{
\dontrun{
data(brain_scRNAseq)

## create ExpressionSet
colnames(Y) <- rownames(design)
phenoData <- new("AnnotatedDataFrame", data=design)
eset <- ExpressionSet(assayData=Y, phenoData=phenoData)

## infer latent status
data <- eset2Phase(eset)

## test DE
de.sc2p <- twoPhaseDE(data, design="celltype", test.which=1, offset="sf")

## visualize top phase I DE gene
visGene(topGene(de.sc2p, 1)$Gene.name[1], data, group.name="celltype")

## visualize top phase II DE gene
visGene(topGene(de.sc2p, 2)$Gene.name[1], data, group.name="celltype")
}

}
