library(downloader)
library(dplyr)

url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
set.seed(1)
sam5 <- vector("numeric",length=1000)
for (i in 1:1000) {
  sam5[i] = mean(sample(x,size=5))
}
length(which(sam5<25&sam5>23))/1000
set.seed(1)
sam50 <- vector("numeric",length=1000)
for (i in 1:1000) {
  sam50[i] = mean(sample(x,size=50))
}
length(which(sam50<25&sam50>23))/1000
dnorm(mean=23.9,sd=0.43)
#CLT
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- na.omit( read.csv(filename) )
head(dat)
y <- dat %>% filter(Sex=="M"&Diet=="chow")
bw_ave <- mean(dat$Bodyweight)
??popsd
bw_sd <- popsd(dat$Bodyweight)
length(which(y<=bw_ave+bw_sd|y>=bw_ave-bw_sd))

