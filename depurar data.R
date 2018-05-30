library(data.table)
library(dplyr)
load("dt.RData")

key(dt) # "codigoEstudiante" "periodo"

## codigoEstudiante

# hay codest de 9 7 6 y 5 caracteres
unique(nchar(dt$codigoEstudiante)) 

## periodo

# # periodo como una vairbale tipo factor
dt$periodo <- as.factor(dt$periodo)

length(levels(dt$periodo)) # hay 20 periodos, desde el 2009-1 hasta el 2018-A

levels(dt$periodo) # periodos

sum(is.na(dt$periodo)) # está completo
grep("NULL",dt$periodo) # 0 NULL's

## numMatricula

sum(is.na(dt$numMatricula)) # está completo
grep("NULL",dt$numMatricula) # 0 NULL's

dt$numMatricula <- as.factor(dt$numMatricula) # variable tipo entera

levels(dt$numMatricula) # "1" "2" "3"

## paralelo

sum(is.na(dt$paralelo)) # está completo
grep("NULL",dt$paralelo) # 0 NULL's

dt$paralelo <- as.factor(dt$paralelo)
levels(dt$paralelo) # alfanumericos y alfabeticos

# por periodo hay un tipo de paralelos

dt <- dt %>% group_by(codigoEstudiante,periodo,numMatricula)






d0

d1$periodo <- as.factor(d1$periodo)

# hay periodos como 1 y 2, y como A y B
# preguntar sobre 2012-1 y 2012-A


length(d1[d1$periodo=="2012-1","codest"]) #  5225 estudiantes 

length(d1[d1$periodo=="2012-A","codest"]) # 4757 estudiantes

d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"]

sum(d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"])
# hay 2568 del periodo 2012-1 que están en el periodo 2012-A

