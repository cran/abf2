\name{abfload}
\alias{abfload}
\title{Load an ABF2 file}
\description{
Loads an Axon ABF2 file. Currently only gap-free recordings are supported.
}
\usage{
abfload(filename = NULL)
}
\arguments{
  \item{filename}{
Name of the ABF file to load. If this is NULL (the default), invokes \code{file.choose()}
to allow the user to select a file using the usual OS dialog.
}
}
\value{
	A list object of class \code{abf2}. This includes a large number of elements corresponding
	to fields in the ABF file header, most of which are of little interest and are not
	documented here (see the source code if you really care). Fields that are actually important
	include:
	\item{traces }{
	A matrix with a row for each recorded signal, containing the actual signal data.
	}
	\item{s }{
	The time (in seconds) corresponding to each recorded sample (ie the columns) of
	\code{traces}.
	}
	\item{tags }{
	A data frame containing any tags recorded in the file, including the time, a
	voltage change (if relevant) and the comment string attached to the tag. For reasons
	of consistency, there will always be at least one voltage tag, for time 0. Note however
	that ABF files do not record the initial voltage, so the value of 0 associated with
	this tag is typically incorrect.
	}
	\item{ADC }{
	A list holding information about each recorded trace in the file. It should have an entry for
	each row in \code{traces}. Each such entry is itself a list, which again includes a lot of
	fields that are typically not interesting and which may actually be incorrect depending on the
	recording configuration. The most useful fields here are probably \code{name} and \code{units},
	which contain text strings from the recording protocol that describe the signal.
	}
}
\author{
Matthew Caldwell <m.caldwell@ucl.ac.uk>
}

\seealso{
\code{\link{plot.abf2}}, \code{\link{split.abf2}}
}
\examples{
\dontrun{
# either supply a filename...
ab <- abfload("yourfile.abf")

# or omit it to invoke file selection dialog
ab <- abfload()
}
}
