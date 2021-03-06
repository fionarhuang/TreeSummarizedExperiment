% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal_utils.R
\name{.all_equal_in_list}
\alias{.all_equal_in_list}
\title{test all elements in a list are equal}
\usage{
.all_equal_in_list(x)
}
\description{
test all elements in a list are equal
}
\examples{
\dontrun{
l1 <- list(a = 1, b = 2, c = 3)
l2 <- list(a = 1, b = 1, c = 1)
.all_equal_in_list(l1)
.all_equal_in_list(l2)
}
}
\keyword{internal}
