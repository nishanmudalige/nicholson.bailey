m <- 10
n <- 40
time <- m + n

# r is a vector of growth rates

h <- NULL
p <- NULL

# initial condition 
h[1] <- 44
p[1] <- 17
a <- 0.03
r <- 1.77
c <- 1

# initial condition 
# (i.e. initial population)
#x[, 1] <- 1.2
# x[, 1] <- 1.2

for(t in 1:time){
  h[t + 1] <- r*h[t]*exp(-a*p[t]) #- 0.05*h[t]
  p[t + 1] <- c*h[t]*(1-exp(-a*p[t]) ) #- 0.05*p[t]
}


plot(h, type="l")
# lines(x=c(1:length(h)), y=p)


plot(h, ylim=c( min(h,p) , max(h,p)), type="l", col="red", lwd=2 )
lines(p, col="blue", lwd=2)
