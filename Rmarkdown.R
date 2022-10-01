library(datasets)
head(airquality)
# below codes just for practice
s<-split(airquality,airquality$Month)
lapply(s,function(x)colMeans(x[,c("Ozone","Solar.R","Wind")]))
# below codes are assigment;
View(airquality)
complete.cases(airquality)# to check NA values existing by true or false
which(complete.cases(airquality))# to check on which row no any NA values
which(!complete.cases(airquality))# to identify on which rows NA values;
na_vec<-which(!complete.cases(airquality))
na_vec
airquality_no_na<-airquality[-na_vec,]
airquality_no_na# all rows with NA values will be removed in this case
