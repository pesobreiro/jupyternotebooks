library(readr)

diretorio <-'C:/nuvem/OneDrive - Instituto Politécnico de Santarém/dev/26.jupyterNotebooks/jupyternotebooks/dados'
setwd(diretorio)

dados <- read_delim("bigfile.csv", col_names = TRUE,delim=',')

head(dados)


### Lets take a look at the package lubridate which has very useful time/date data functions
library(lubridate)
dados$`Last Update` = ymd(dados$`Last Update`)

head(dados)

a = ymd(a) ;a
