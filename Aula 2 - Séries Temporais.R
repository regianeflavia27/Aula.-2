> x <- 1:20
> y <- 20:30
> x>10
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[14]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> x<10
[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE
[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> x>=3
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[14]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> x<=2
[1]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> x==5
[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> ls()
[1] "x" "y"
> rm(x)
> rm(list = "x","y")
Warning message:
  In rm(list = "x", "y") : object 'x' not found
> rm(list=ls())
> getwd()
[1] "C:/Users/Renata/AppData/Local/Temp/Temp2_2-Series_Temporais-master.zip/2-Series_Temporais-master"
> setwd("c:/EconometriaA")
> install.packages("pwt8")
Installing package into 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pwt8_8.1-1.zip'
Content type 'application/zip' length 2083253 bytes (2.0 MB)
downloaded 2.0 MB

package 'pwt8' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Renata\AppData\Local\Temp\Rtmpk3na8j\downloaded_packages
> library(pwt8)
> data("pwt8.0")
> View(pwt8.0)
> br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr"))
> colnames(br) <-  c("PIB","Trabalho","CÃ¢mbio")
> plot(br$PIB)
> plot(br$PIB, type = "l")
> dados <- ts(br, start = 1950, frequency = 1)
> plot(dados, main="Dados Barsileiros", xlab="Ano")
> plot(dados, main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> plot(dados, col="blue", main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> plot(dados, col=c("blue","red","green"), main="Dados Barsileiros", xlab="Ano", plot.type = "single")
> write.csv(br,file = "br.csv")
> rm(list=ls())
> x<-1:10
> y<-rep(3,10)
> ls()
[1] "x" "y"
> rm(x)
> rm(y)
> rm(list="x","y")
Warning messages:
  1: In rm(list = "x", "y") : object 'x' not found
2: In rm(list = "x", "y") : object 'y' not found
> rm(list=ls())
> getwd()
[1] "c:/EconometriaA"
> setwd("c:/econometria")
Error in setwd("c:/econometria") : cannot change working directory
> setwd("c:/EconometriaA")
> getwd()
[1] "c:/EconometriaA"
> a<-1:20
> a>10
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[14]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> a>=2
[1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[14]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> a<=4
[1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> a==3
[1] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> install.packages("pwt8")
Error in install.packages : Updating loaded packages
> library("pwt8")
> data("pwt8.0")
> View(pwt8.0)
> library(readxl)
> dataset <- read_excel(NULL)
Error: `path` must be a string
> View(dataset)
Error in View : object 'dataset' not found
> br<-subset(pwt8.0,country=="Brazil",select = c(rgdpna,avh,xr))
> View(br)
> colnames(br)<-c("PIB","Trabalho","Cambio")
> plot(br$PIB) <plot(br$p)
Error in plot.window(...) : valores finitos são necessários para 'xlim'
In addition: Warning messages:
  1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> plot(br$PIB) <plot(br$PIB,type = "1")
Error in plot.xy(xy, type, ...) : tipo de gráfico inválido '1'
> plot(br$PIB) <plot(br$PIB,type = "l")
logical(0)
> dados<-ts(br,start=1950,freq=1)
> plot(dados)
> plot(dados,col="blue",main="Dados Brasileiros",xlab="Ano")
> write.csv2(br,file="br.csv")
> 