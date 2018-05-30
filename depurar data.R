
load("dt.RData")

# periodo

# # periodo como una vairbale tipo factor
dt$periodo <- as.factor(dt$periodo)

length(levels(dt$periodo)) # hay 20 periodos, desde el 2009-1 hasta el 2018-A



d0$sexoes <- as.factor(d0$sexoes)
d0

d1$periodo <- as.factor(d1$periodo)

# hay periodos como 1 y 2, y como A y B
# preguntar sobre 2012-1 y 2012-A


length(d1[d1$periodo=="2012-1","codest"]) #  5225 estudiantes 

length(d1[d1$periodo=="2012-A","codest"]) # 4757 estudiantes

d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"]

sum(d1[d1$periodo=="2012-1","codest"]%in% d1[d1$periodo=="2012-A","codest"])
# hay 2568 del periodo 2012-1 que están en el periodo 2012-A

