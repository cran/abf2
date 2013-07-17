\name{multiplot}
\alias{multiplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot multiple trace segments from an \code{abf2} object.
}
\description{
Plots multiple segments from an \code{abf2} trace together on a single plot. This can be
useful for preparing figures, since all segments share the same scale. Segments are
plotted from the bottom up, ie the second is plotted above the first and so on.
}
\usage{
multiplot(x, adc = 1, duration = 1, start = 0, pts = 1000,
type = "s", single.col = 1, local.col = TRUE, gutter = NULL,
gutter.prop = 0.1, labels = NULL, rotate.labels = 90,
time.scale = 0.2, time.scale.label = paste(time.scale * 1000, "ms", sep = ""),
trace.scale = 5, trace.scale.label = paste(trace.scale, "pA", sep = ""),
scale.col = "grey50", xinset = NULL, xinset.prop = 1/20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
The \code{abf2} object containing the data, as loaded by \code{\link{abfload}}.
}
  \item{adc}{
The ADC channel from which the trace data should be taken.
}
  \item{duration}{
The length of the segments, in seconds. (All plotted segments have the same duration.)
}
  \item{start}{
A vector containing the start times (in seconds) of all the segments within the ADC trace.
}
  \item{pts}{
The maximum number of points to plot for each segment. If the segment actually contains
fewer samples than this, that smaller number will be plotted. If, as is more common, the
segment contains many more samples, it is downsampled to this number of points.
}
  \item{type}{
The plot type (see \code{\link{plot}}). By default, traces are drawn with the stair-step style "s".
}
  \item{single.col}{
Colour to plot all trace segments with if \code{local.col} is \code{FALSE}.
}
  \item{local.col}{
Whether to plot all trace segments in the same colour, as specified with \code{single.col},
or to use a different colour for each one. The latter can be useful if the figure will be
edited subsequently in a vector graphics editing program.
}
  \item{gutter}{
The vertical space to insert between trace segments. This is specified in the units of the
y axis, which is often inconvenient. By default the gap is instead calculated proportionally
(see \code{gutter.prop}.)
}
  \item{gutter.prop}{
The vertical gap between traces, proportional to the largest segment (ie, with the greatest
vertical range). If an explicit value is provided in the \code{gutter} argument, this is
ignored.
}
  \item{labels}{
Vector of labels to be drawn alongside the trace segments. The values are coerced to \code{character},
and repeated as necessary. If \code{NULL} (the default) the function will attempt to use the prevailing
voltage for each segment, if that's available from the file tags.
}
  \item{rotate.labels}{
Angle at which to draw the trace label text (if any). The default (90) draws the labels
parallel to the y axis.
}
  \item{time.scale}{
The length of the time (horizontal) scale bar, in seconds.
}
  \item{time.scale.label}{
A text label to draw under the time (horizontal) scale bar. Default is the specified scale bar
length expressed in milliseconds.
}
  \item{trace.scale}{
Length of the trace (vertical) scale bar, in whatever units the trace is recorded in.
}
  \item{trace.scale.label}{
A text label to draw alongside the trace (vertical) scale bar. Default is the specified scale
bar length with the assumption that the trace data is in picoamps.
}
  \item{scale.col}{
Colour in which both the scale bars and their labels will be drawn.
}
  \item{xinset}{
Amount by which the plot should be offset from the left to allow space for the scale bars,
in seconds. By default this is instead specified proportionally (see \code{xinset.prop}).
}
  \item{xinset.prop}{
Amount by which the plot should be offset from the left to allow space for the scale bars,
as a fraction of the overall trace width.
}
  \item{\dots}{
Further arguments to be passed to \code{plot}. Note that axes and axis labels are explicitly
defined by the function (as empty/absent), so including these again will generate an error.
}
}
\value{
None.
}
\author{
Matthew Caldwell <m.caldwell@ucl.ac.uk>
}
\seealso{
\code{\link{abfload}}
}

\examples{
\dontrun{
# load an abf file
ab <- abfload("yourfile.abf")

# assuming there are multiple tags in the file, plot
# the 2nd second of each tagged region of channel 2
multiplot(ab, adc=2, start=ab$tags$time + 1)
}
}
