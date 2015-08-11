library Rcpp requires Rtools. to install Rtools for windows 
#see: https://github.com/stan-dev/rstan/wiki/Install-Rtools-for-Windows
library("Rcpp")

#load hymod model
setwd("E:/Dropbox/code_tools/GitHub/models/hymodR/")
sourceCpp("hymodMainR.cpp")

#load input data
data <- read.table("exampleData.txt", header = TRUE)

rain <- data[,3]
evap <- data[,2]
temp <- data[,4]

#####set parameters of hmod model
  params <- c(20,    #ks (1/days) slow flow time constant
            2,    #Kq (1/days) quick flow time constant 
            8,    #DDF (mm/degC/day) degree day factor
            0,    #T2 (degC) threshold for snow melt
            0,    #T1 (degC) threshold for snow
            0.3,  #alpha (-)   reservoir split parameter
            3,  #beta (-) 0-7 distribution of soil moisture stores
            3000  #cMax (mm) 0-2000 maximum soil moisture storage
            )

#####run hymod
  a <- Rhymod(rain, evap, temp, params)
  a <- data.frame(a)

#####plot results
  plot(data$Q, type = "l", col = "blue", xlab = "Time (Days)", ylab = "Discharge (mm/day)")
  lines(a[1], col = "red")

