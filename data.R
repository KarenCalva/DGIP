load("d0.RData")
d1 <- data.frame(d0)
d1$codest <- as.character(d1$codest)

# verifico que no hayan espacios vacios en codest
grep(" ",d0$codest)

# hay codest de 9 7 6 y 5 caracteres
unique(nchar(d0$codest)) 

# codest tiene unicamente numeros
d0$codest[grep("_",d0$codest,fixed = T)]

d1$periodo <- as.factor(d1$periodo)

# hay periodos como 1 y 2, y como A y B
# preguntar sobre 2012-1 y 2012-A

levels(d1$periodo) #  "2009-1" "2009-2" "2010-1" "2010-2" "2011-1" "2011-2" "2012-1" "2012-A"
                    # "2012-B" "2013-A" "2013-B" "2014-A" "2014-B" "2015-A" "2015-B" "2016-A"
                      # "2016-B" "2017-A" "2017-B" "2018-A"

length(d1[d1$periodo=="2012-1","codest"]) #  5225 estudiantes 

length(d1[d1$periodo=="2012-A","codest"]) # 4757 estudiantes
 
d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"]

sum(d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"])
# hay 2568 del periodo 2012-1 que están en el periodo 2012-A

library(dplyr)
library(data.table)

d1 <- data.table(d1,key =c("codest","periodo") )

d1$nummtr <- as.factor(d1$nummtr)

View(d1 %>% select(nummtr) %>%  filter(d1$periodo =="2012-1"))

levels(d0$periodo)
d0$sexoes <- as.factor(d0$sexoes)
d0