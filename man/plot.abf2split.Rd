\name{plot.abf2split}
\alias{plot.abf2split}
\title{
Plot an \code{abf2split} segment
}
\description{
Plot a segment of an ABF data trace obtained by calling \code{split} on an
\code{abf2} object.
}
\usage{
\method{plot}{abf2split}(x, pts = 1000, time = NULL, type = "s", col = 1,
xlab = "Time (s)", ylab = "Current (pA)",
main = paste("Segment ", x$index, " at ", x$level, " mV  [", x$comment, "]", sep = ""),
...)
}
\arguments{
  \item{x}{
An \code{abf2split} object returned by \code{split.abf2}.
}
  \item{pts}{
The maximum number of sample points to plot. If the segment actually contains
fewer samples than this, that smaller number will be plotted. If, as is more common, the
segment contains many more samples, it is downsampled to this number of points.
}
  \item{time}{
Optional specifier of a time range to be plotted. By default the full segment is used. If a single numeric
value is provided here, it specifies the end time, with the plot starting from the beginning of the segment.
Otherwise the segment is plotted from the \code{time[1]} to \code{time[2]}.
}
  \item{type}{
The plot type (see \code{\link{plot}}). By default, traces are drawn with the stair-step style "s".
}
  \item{col}{
The colour with which the trace should be plotted.
}
  \item{xlab}{
Label for the x-axis of the plot.
}
  \item{ylab}{
Label for the y-axis of the plot.
}
  \item{main}{
Main title for the plot.
}
  \item{\dots}{
Additional parameters passed to \code{\link{plot}}.
}
}
\value{None.}
\author{
Matthew Caldwell <m.caldwell@ucl.ac.uk>
}
\seealso{
\code{\link{split.abf2}}, \code{\link{abfload}}
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
