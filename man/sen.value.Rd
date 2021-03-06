% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core.R
\name{sen.value}
\alias{sen.value}
\title{Compute sensitivity value}
\usage{
sen.value(d, alpha = 0.05, mm = c(2, 2, 2), alternative = c("greater",
  "less", "two.sided"), score.method = c("approximate", "exact"))
}
\arguments{
\item{d}{a vector or matrix of treatment-minus-control differences (each column correponds to a hypothesis)}

\item{alpha}{significance level}

\item{mm}{test statistic, either a vector of length 3 or a matrix of three rows where each column corresponds to a U-statistic. Default is the (approximate) Wilcoxon's signed rank test.}

\item{alternative}{report p-value corresponds to the maximum ("upper") or minimum ("lower") bound}

\item{score.method}{either approximate score or exact score}
}
\value{
sensitivity value, i.e. the kappa value such that the p-value becomes just insignificant. If \code{mm} is a matrix, then return a vector of sensitivity values corresponding to each column of \code{mm}.
}
\description{
Compute sensitivity value
}
\details{
The alternative direction is the the center of \code{d} is greater than 0.
}
\examples{
d <- rnorm(100) + 1
gamma.star <- kappa2gamma(sen.value(d, alpha = 0.05, mm = matrix(c(2, 2, 2, 8, 5, 8), ncol = 2)))
gamma.star
sen(d, mm = c(2, 2, 2), gamma = gamma.star[1])$p.value # should equal the significance level 0.05

}
\author{
Qingyuan Zhao
}
\references{
Qingyuan Zhao. On sensitivity value of pair-matched observational studies. arXiv 1702.03442, \url{https://arxiv.org/abs/1702.03442}.
}

