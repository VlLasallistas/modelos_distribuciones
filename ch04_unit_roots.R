#install.packages("readxl")
#install.packages("xlsx")
#install.packages("CADFtest")
rm(list = ls())

#library(readxl)
library(CADFtest)

path <- "D:/Docs/enders_ts/data_sets/quarterly.csv"
qtly <- read.csv(path)
str(qtly)
#names(qtly)

qtly_ts <- ts(qtly[,c(2:7)], start= c(1960,1),end =c(2002,1),frequency = 4)
plot(qtly_ts)
summary(qtly_ts)

# proposed
#adf1 <- CADFtest(qtly_ts[,4],type=("trend"),max.lag.y=12,criterion=c("AIC"))
#summary(adf1)
lrgdp = log(qtly_ts[,4])
# text
adf1 <- CADFtest(lrgdp,type=("trend"),max.lag.y=12,min.lag.X=2,criterion=c("AIC"))
summary(adf1)

# from: https://www.r-bloggers.com/unit-root-tests/
lags=2
X = lrgdp
#trnd=(lags+1):n
trnd=1:(n-lags)
z=diff(X)
n=length(z)
z.diff=embed(z, lags+1)[,1]
z.lag.1=X[(lags+1):n]
k=lags+1
z.diff.lag = embed(z, lags+1)[, 2:k]

model_t <- summary(lm(z.diff~1+trnd+z.lag.1+z.diff.lag ))
r2_un <- model_t$r.squared
df_t <- model_t$df[2]

model_res <- summary(lm(z.diff~1+z.diff.lag ))
r2_res <- model_res$r.squared

# from Enders 2nd Ed.
psi_3 <- ((r2_un-r2_res)/2)/((1-r2_un)/df_t)
psi_3
