\name{plot.abf2}
\alias{plot.abf2}
\title{
Plot a trace from an \code{abf2} object.
}
\description{
Plots a trace of (portions of) data loaded from an ABF2 file.
}
\usage{
\method{plot}{abf2}(x, adc = 1, time = NULL, pts = 1000, type = "s",
col = 1, vtags = TRUE, ctags = TRUE, vcol = "grey", ccol = "pink",
vlty = "dotted", clty = "dashed", xlab = "Time (s)", ylab = NULL,
vText = "bottom", vtunits = FALSE, vtcol = 4, vtpad = 0.1, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
An \code{abf2} object loaded by \code{\link{abfload}}
}
  \item{adc}{
Index of the ADC channel to plot from.
}
  \item{time}{
Optional specifier of a time range to be plotted. By default the full trace is used. If a single numeric
value is provided here, it specifies the end time, with the plot starting from the beginning of the trace.
Otherwise the trace is plotted from the \code{time[1]} to \code{time[2]}.
}
  \item{pts}{
The maximum number of sample points to plot. If the trace actually contains
fewer samples than this, that smaller number will be plotted. If, as is more common, the
trace contains many more samples, it is downsampled to this number of points.}
  \item{type}{
The plot type (see \code{\link{plot}}). By default, traces are drawn with the stair-step style "s".
}
  \item{col}{
The colour with which the trace should be plotted.
}
  \item{vtags}{
Whether to draw lines indicating any voltage changes included in the file tags.
}
  \item{ctags}{
Whether to draw lines indicating non-voltage tags.
}
  \item{vcol}{
Line colour with which voltage tag indicators should be drawn.
}
  \item{ccol}{
Line colour with which non-voltage tag indicators should be drawn.
}
  \item{vlty}{
Line type with which voltage tag indicators should be drawn.
}
  \item{clty}{
Line type with which non-voltage tag indicators should be drawn.
}
  \item{xlab}{
Label for the x-axis of the plot.
}
  \item{ylab}{
Label for the y-axis of the plot. If \code{NULL} (the default), the name and units specified
for this ADC in the ABF file header will be used.
}
  \item{vText}{
String indicating where a text label for voltage change indicators should be drawn. If this is
\code{"bottom"}, labels are drawn at the bottom of the plot, otherwise at the top. To omit labels
altogether, set this to \code{NULL}.
}
  \item{vtunits}{
Whether to include units in voltage change labels (if any).
}
  \item{vtcol}{
Colour to draw the voltage change labels (if any).
}
  \item{vtpad}{
Padding added to the plot to account for voltage change labels. Alternate label positions are
also offset up and down by a fraction of this amount to mitigate against overlap when voltage
changes occur close together.
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
\code{\link{abfload}}, \code{\link{plot}}
}
\examples{
\dontrun{
# load an ABF file
ab <- abfload()

# plot a ten second segment of the second channel
plot(ab, adc=2, time=c(10,20))
}
}
