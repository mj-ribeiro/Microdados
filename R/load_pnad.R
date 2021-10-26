#' @description  Returns a tibble with PNAD data (people) for the requested year.
#' @author Marcos Júnio Ribeiro
#' @param year: Year for which you want to download PNAD
#'
#' @examples
#' load_pnad(2002) # returns PNAD 2002
#' load_pnad(2015) # returns PNAD 2015
#'
#' @exports
load_pnad = function(year){
  year = year

  if(curl::has_internet()==FALSE){
    stop('There is no internet connection. Try again later!')
  }

  if(year>2015 | year<2002){
    stop("This package doesn't provide PNAD to this year. Try again!")
  }

  if(year==2010){
    stop('PNAD is not available to 2010. Try again!')
  }

  link = 'https://github.com/mj-ribeiro/PNAD/raw/main/'
  link2 = paste(link, "pnad-", year, '.rds', sep = '')

  print("Okay, your data is downloading!")

  read_rds( url(link2) )
}



