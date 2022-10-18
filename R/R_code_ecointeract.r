 # this is a code for investigating relationships among ecological variables
 
# we are using the sp package . to install is use library 
# install.packages("sp")
library(sp)

# recall dataset using function data 
data(meuse)

# you can aslo make use of require()
# we are using meuse # search for "meuse dataset R sp package"
# https://cran.r-project.org/web/packages/gstat/vignettes/gstat.pdf
data(meuse)

view(meuse)
dev.off()
Error in dev.off() : cannot shut down 
summary(meuse)

plot(cadmium, zinc) # error
plot(meuse$cadmium,meuse$zinc)
cad <- meuse$cadmium
zin <- meuse$zinc
plot(cad,zin)
attach(meuse)
plot(cadmium,zinc)
# detach(meuse) 
pairs(meuse)
meuse[ ,3: 6]
pol <- meuse[,3: 6]
pol 
head (pol)
pairs(pol, col="blue", cex=1,5)
pairs (cadmium + copper + lead + zinc + data=meuse )
coordniates(meuse)
coordinates(meuse) = ~x+y
spplot(meuse, "cadmium" , main="concentration of cadmium")
spplot(meuse, c("copper","zinc"))
