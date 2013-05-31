\name{remoteLs}
\alias{remoteLs}
\title{Remote List Objects}
\description{
  \code{remoteLs} returns the names of the objects in the global environment
  on each slave process, as a list of character vectors.
}
\usage{
remoteLs()
}
\value{
  A list, with each element a vector of character strings giving the
  names of the objects on a given slave process.
}
\seealso{
  \code{remoteRm}
}

\examples{
bigGP.init(3)
a <- 3
b <- 7
push(a); push(b)
remoteLs()
remoteRm(a)
remoteLs()
}
\keyword{ls}
\keyword{objects}

