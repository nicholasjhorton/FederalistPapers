#' FederalistPapers
#'
#' This package contains the text of the Federalist Papers
#' @docType package
#' @name FederalistPapers
#' @aliases FederalistPapers FederalistPapers-package
NULL

#' "FederalistPapers"
#'
#' A data set containing the text of the Federalist Papers
#'
#' @source \url{https://www.gutenberg.org/ebooks/18} and \url{https://en.wikipedia.org/wiki/The_Federalist_Papers}
#' @format A dataframe with 19,417 elements
#' \describe{
#'   \item{text}{Line of text}
#'   \item{line_number}{Line number within paper}
#'   \item{paper}{Paper number (1 through 86}
#'   \item{roman_number}{Roman numeral equivalent of paper number}
#'   \item{author}{Imputed author (John Jay, James Madison, or Alexander Hamilton, determined circa 1944, see Wikipedia)}
#'   \item{disputed}{Authorship disputed: see Mosteller and Wallace (JASA, 1963)}
#'   \item{title}{Title of the paper}
#' }
#' @details{There are two slightly different versions of No. 70: the first is included here.}

"FederalistPapers"
