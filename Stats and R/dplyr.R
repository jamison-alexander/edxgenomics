library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)
sleep <- read.csv(paste(getwd(),filename,sep="/"))
class(sleep)
length(which(sleep$order=="Primates"))
