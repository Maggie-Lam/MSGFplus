% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/msgfPar-getters.R
\docType{methods}
\name{mods}
\alias{mods}
\alias{mods<-}
\alias{nMod}
\alias{nMod<-}
\alias{mods,msgfPar-method}
\alias{mods<-,msgfPar,msgfParModificationList-method}
\alias{nMod,msgfPar-method}
\alias{nMod<-,msgfPar,numeric-method}
\title{Get and set the modifications in msgfPar objects}
\usage{
mods(object)

mods(object) <- value

nMod(object)

nMod(object) <- value

\S4method{mods}{msgfPar}(object)

\S4method{mods}{msgfPar,msgfParModificationList}(object) <- value

\S4method{nMod}{msgfPar}(object)

\S4method{nMod}{msgfPar,numeric}(object) <- value
}
\arguments{
\item{object}{An msgfPar object}

\item{value}{An msgfParModificationList object or in the case of nMod an 
integer}
}
\value{
For the getter an msgfParModificationList object or an integer (in 
the case of nMod)
}
\description{
These functions allow you to retrieve and set the specific modifications 
allowed on peptides during MS-GF+ search, as well as the number allowed on 
each peptide
}
\section{Methods (by class)}{
\itemize{
\item \code{msgfPar}: Get the list of modifications allowed during 
peptide search

\item \code{object = msgfPar,value = msgfParModificationList}: Set the list of modifications allowed during 
peptide search

\item \code{msgfPar}: Get the number of peptides allowed per peptide 
during search

\item \code{object = msgfPar,value = numeric}: Set the number of peptides allowed per peptide 
during search using an integer
}}

\examples{
parameters <- msgfPar(system.file(package='MSGFplus', 'extdata', 'milk-proteins.fasta'))
nMod(parameters) <- 2
mods(parameters)[[1]] <- msgfParModification(
                                                      name='Carbamidomethyl',
                                                      composition='C2H3N1O1',
                                                      residues='C',
                                                      type='fix',
                                                      position='any'
                                                     )
mods(parameters)

}
\seealso{
Other msgfPar-getter_setter: \code{\link{chargeRange}},
  \code{\link{db}}, \code{\link{enzyme}},
  \code{\link{fragmentation}}, \code{\link{instrument}},
  \code{\link{isotopeError}}, \code{\link{lengthRange}},
  \code{\link{matches}}, \code{\link{ntt}},
  \code{\link{protocol}}, \code{\link{tda}},
  \code{\link{tolerance}}
}
