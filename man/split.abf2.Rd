\name{split.abf2}
\alias{split.abf2}
\title{
Split an \code{abf2} trace on tag boundaries.
}
\description{
Splits a data trace from an \code{abf2} object (loaded by \code{\link{abfload}} into
separate segments identified by the file tags.
}
\usage{
\method{split}{abf2}(x, f=NULL, drop=FALSE, adc = 1, lag = 0.3, ...)
}
\arguments{
  \item{x}{
An \code{abf2} object, loaded using \code{\link{abfload}}
}
  \item{f}{
Unused argument for compatibility with generic \code{split}.
}
  \item{drop}{
Unused argument for compatibility with generic \code{split}.
}
  \item{adc}{
Index of the ADC channel to split. 
}
  \item{lag}{
An offset to be discarded after the start of a tag. It will typically take time for an
experimental change denoted by a tag to take effect. In particular for voltage changes,
there is a short delay between specifying the new voltage and it being applied by the
amplifier. The default 0.3 second \code{lag} removes this delay period during which the
previous value obtains. Longer values may be desirable when tags relate to slower
interventions such as solution exchange.
}
  \item{\dots}{
Additional parameters (currently ignored).
}
}
\value{
A list of objects of class \code{abf2split}, each including the following
fields:

\item{trace }{A vector containing the actual sample data for split segment.}
\item{s }{A vector containing the times of each of the samples in \code{trace}.}
\item{level }{The prevailing voltage level, if known.}
\item{index }{The index of this tag in the tags table (hence also this segment in the result list).}
\item{comment }{The comment from the tag associated with this segment.}
}
\author{
Matthew Caldwell <m.caldwell@ucl.ac.uk>
}
\seealso{
\code{\link{plot.abf2split}}, \code{\link{abfload}}
}
\examples{
\dontrun{
# load an ABF file
ab <- abfload()

# split the 2nd channel
abx <- split(ab, adc=2)

# plot the first segment
plot(abx[[1]])
}
}

