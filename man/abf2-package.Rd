\name{abf2-package}
\alias{abf2-package}
\alias{abf2}
\docType{package}
\title{
Load (gap-free) Axon ABF2 files
}
\description{
Loads electrophysiology data from Version 2 ABF files, as created by Axon
Instruments/Molecular Devices software such as pClamp 10.
Only files recorded in gap-free mode are currently supported.

The ABF2 loading routines are adapted from Matlab code by Forrest Collman
<forrest.collman@gmail.com> and C++ code by Jakub Nowacki
<http://sourceforge.net/projects/libaxon/>.
}
\details{
\tabular{ll}{
Package: \tab abf2\cr
Type: \tab Package\cr
Version: \tab 0.7\cr
Date: \tab 2013-07-17\cr
License: \tab Artistic-2.0\cr
LazyLoad: \tab yes\cr
}
}
\author{
Matthew Caldwell <m.caldwell@ucl.ac.uk>
}
\keyword{ package }
\examples{
\dontrun{
# load an ABF file chosen through a standard file dialog
ab <- abfload()

# print a summary of the file contents
summary(ab)

# plot it with default options (full duration of first recorded channel)
plot(ab)

# plot the first 5 seconds of the second channel
plot(ab, adc=2, time=c(0,5))
}
}
