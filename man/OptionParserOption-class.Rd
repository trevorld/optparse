% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optparse.R
\docType{class}
\name{OptionParserOption-class}
\alias{OptionParserOption-class}
\alias{OptionParserOption}
\title{Class to hold information about command-line options}
\description{
Class to hold information about command-line options
}
\section{Slots}{

\describe{
\item{\code{short_flag}}{String of the desired short flag
comprised of the \dQuote{-} followed by a letter.}

\item{\code{long_flag}}{String of the desired long flag comprised of \dQuote{--}
followed by a letter and then a sequence of alphanumeric characters.}

\item{\code{action}}{A character string that describes the action \code{optparse}
should take when it encounters an option, either \dQuote{store},
\dQuote{store_true}, or \dQuote{store_false}.  The default is \dQuote{store}
which signifies that \code{optparse} should store the specified following
value if the option is found on the command string.  \dQuote{store_true}
stores \code{TRUE} if the option is found and \dQuote{store_false} stores
\code{FALSE} if the option is found.}

\item{\code{type}}{A character string that describes specifies which data type
should be stored, either \dQuote{logical}, \dQuote{integer}, \dQuote{double},
\dQuote{complex}, or \dQuote{character}.  Default is \dQuote{logical} if
\code{action \%in\% c("store_true", store_false)}, \code{typeof(default)} if
\code{action == "store"} and default is not \code{NULL} and
\dQuote{character} if \code{action == "store"} and default is \code{NULL}.
\dQuote{numeric} will be converted to \dQuote{double}.}

\item{\code{dest}}{A character string that specifies what field in the list returned
by \code{parse_args} should \code{optparse} store option values.  Default is
derived from the long flag in \code{opt_str}.}

\item{\code{default}}{The default value \code{optparse} should use if it does not
find the option on the command line.}

\item{\code{help}}{A character string describing the option to be used by
\code{print_help} in generating a usage message.  \code{\%default} will be
substituted by the value of \code{default}.}

\item{\code{metavar}}{A character string that stands in for the option argument when
printing help text.  Default is the value of \code{dest}.}

\item{\code{callback}}{A function that executes after the each option value is fully parsed}

\item{\code{callback_args}}{Additional arguments that pass to the callback function.}
}}

\seealso{
\code{\link{make_option}}
}
