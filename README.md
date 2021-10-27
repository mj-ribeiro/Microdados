# Microdados

### Description

In this package I provide a easy and fast way to get PNAD using R. With this package you have access to the PNADs from 1992 to 2015, except for 1994,
2000 and 2010, years in which the PNAD was not carried out. Enjoy !



| Source     |     Data  | Function  |  Period  | Sub dataset |
| :---       |    :----: |      ---: |     ---: |     ---:    |
| IBGE    | PNAD      | load_pnad  | 1992 to 2015 | pessoas e domicilios |




### Installation

```
install.packages("devtools")
devtools::install_github("mj-ribeiro/Microdados")
library('Microdados')
```

### Examples

```
load_pnad(2001, 'pessoas')
load_pnad(1996, 'domicilios')
```

My R course can be view in my channel on [YouTube ](https://www.youtube.com/channel/UChWkFzZwrWrfQgZ2PIEJbhg). 

