library(downloader)
library(dplyr)
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

#Dplyr
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)
sleep <- read.csv(paste(getwd(),filename,sep="/"))
class(sleep)
length(which(sleep$order=="Primates"))
prim_sleep <- filter(sleep,order=="Primates") %>% select(sleep_total)
mean(unlist(prim_sleep))
sleep %>% filter(order=="Primates") %>% summarize(ave=mean(sleep_total))
