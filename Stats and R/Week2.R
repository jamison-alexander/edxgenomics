library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
#What is the average weight
ave<-mean(x)
set.seed(1)
#What is the difference between the average and a sample of 5?
abs(ave-mean(sample(x,size=5)))
set.seed(5)
abs(ave-mean(sample(x,size=5)))
#Null distribution exercises
set.seed(1)
aves <- vector(mode="numeric",length=1000)
for (i in 1:1000) {
  aves[i] = mean(sample(x,size=5))
}
aves
length(which(abs(aves-ave)>1))


aves_2 <- vector(mode="numeric",length=10000)
for (i in 1:1000) {
  aves_2[i] = mean(sample(x,size=5))
}
length(which(abs(aves_2-ave)>1))

set.seed(1)
aves_3 <- vector(mode="numeric",length=1000)
for (i in 1:1000) {
  aves_3[i] = mean(sample(x,size=50))
}
aves_3
