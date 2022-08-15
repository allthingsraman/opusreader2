#' @export
calc_parameter_chunk_size <- function(ds) UseMethod("calc_parameter_chunk_size")

#' @export
calc_parameter_chunk_size.parameter <- function(ds){

  ds$chunk_size <- calc_chunk_size(ds)

  return(ds)

}

#' @export
calc_parameter_chunk_size.text <- function(ds){

  ds$chunk_size <- calc_chunk_size(ds)

  return(ds)
}

#' @export
calc_parameter_chunk_size.data <- function(ds){
  return(ds)
}

calc_chunk_size <- function(ds){

  chunk_size <- ds$next_offse - ds$offset

  return(chunk_size)
}