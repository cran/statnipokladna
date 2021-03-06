% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codelists.R
\name{sp_get_codelist}
\alias{sp_get_codelist}
\title{Get codelist}
\usage{
sp_get_codelist(codelist_id, n = NULL, dest_dir = NULL, redownload = FALSE)
}
\arguments{
\item{codelist_id}{A codelist ID. See \code{id} column in \code{sp_codelists} for a list of available codelists.}

\item{n}{Number of rows to return. Default (NULL) means all. Useful for quickly inspecting a codelist.}

\item{dest_dir}{character. Directory in which downloaded files will be stored.
If left unset, will use the \code{statnipokladna.dest_dir} option if the option is set, and \code{tempdir()} otherwise. Will be created if it does not exist.}

\item{redownload}{Redownload even if file has already been downloaded? Defaults to FALSE.}
}
\value{
a \link[tibble:tibble-package]{tibble}
}
\description{
Downloads and processes codelist identified by \code{codelist_id}. See \code{sp_codelists} for a list of
of available codelists with their IDs and names.
}
\details{
You can usually tell which codelist you need from the name of the column whose code you
are looking to expand, e.g. the codes in column paragraf can be expanded by codelist paragraf.

The processing ensures that the resulting codelist can be correctly joined to
the data, automatically using \code{sp_add_codelist()} or manually.
The entire codelist is downloaded and not filtered for any particular date.

Codelist XML files are stored in a temporary directory as determined by \code{tempdir()}
and persist per session to avoid redownloads.
}
\examples{
\dontrun{
sp_get_codelist("paragraf")
}
}
\seealso{
Other Core workflow: 
\code{\link{add_codelist}()},
\code{\link{get_codelist}()},
\code{\link{sp_add_codelist}()},
\code{\link{sp_get_dataset}()},
\code{\link{sp_get_table}()}
}
\concept{Core workflow}
