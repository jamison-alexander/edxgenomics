library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)
wd <-getwd()
femmice <- read.csv(paste(wd,filename,sep="/"))
head(femmice)
femmice[12,2]
print(femmice$Bodyweight[11])
length(femmice$Diet)
mean(femmice$Bodyweight[which(femmice$Diet=="hf")])
set.seed(1)
sample(femmice$Bodyweight[13:24],size=1)
