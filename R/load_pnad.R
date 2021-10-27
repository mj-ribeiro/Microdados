#' @title Pnad download
#' @description  Returns a tibble with PNAD data for the requested year.
#' @author Marcos Júnio Ribeiro
#' @param year: Numeric (Positive) year for which you want to download PNAD.
#' @param type: A character string (pessoas or domicilios) that indicates which PNAD do you want.
#'
#' @examples
#' load_pnad(2002, type='pessoas') # returns PNAD pessoas 2002.
#' load_pnad(2015, type = 'domicilios') # returns PNAD domicilios 2015.
#' @exports
load_pnad = function(year, type){

  if(curl::has_internet()==FALSE){
    stop('There is no internet connection. Try again later!')
  }

  if(type %notin% c('domicilios', 'pessoas') ){
    stop('Type argument accept only domicilios or pessoas.')
  }

  year = year

  if(year>2015 | year<2002){
    stop("This package doesn't provide PNAD to this year. Try again!")
  }

  if(year==2010){
    stop('PNAD is not available to 2010. Try again!')
  }

  # pessoas ----
  if(type == 'pessoas'){

    link = 'https://github.com/mj-ribeiro/PNAD/raw/main/'
    link2 = paste(link, "pnad-", year, '.rds', sep = '')

    print("Okay, your PNAD pessoas is downloading!")

    readRDS( url(link2) )

  }

  # domicílios ----

  else if(type == 'domicilios'){

    link = 'https://github.com/mj-ribeiro/PNAD/raw/main/'
    link2 = paste(link, "dom", year, '.rds', sep = '')

    print("Okay, your PNAD domicílios is downloading!")

    readRDS( url(link2) )

  }

}

