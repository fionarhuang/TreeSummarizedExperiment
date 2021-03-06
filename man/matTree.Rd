% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tree_matTree.R
\name{matTree}
\alias{matTree}
\title{Transform a phylo object into a matrix.}
\usage{
matTree(tree)
}
\arguments{
\item{tree}{A phylo object}
}
\value{
A matrix
}
\description{
\code{matTree} transforms a phylo tree into a matrix. The entry of the matrix
is node number. Each row represents a path connecting a leaf node and the
root. The columns are arranged in the order as the path passing the nodes to
reach the root.
}
\examples{
library(ggtree)

data(tinyTree)
ggtree(tinyTree, branch.length = 'none') +
 geom_text2(aes(label = node))


# each row of the matrix representing a path.
# the first column is leaf nodes; the last non-NA value in a row is the root
mat <- matTree(tree = tinyTree)

}
\author{
Ruizhu Huang
}
