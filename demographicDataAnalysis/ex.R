stats <- read.csv(file.choose())
stats

getwd()
setwd("/Users/andimutiazz/Documents/PROJECT/course/R/sec5")
getwd()
rm(stats)
stats <- read.csv("/Users/andimutiazz/Documents/PROJECT/course/R/sec5/P2-Demographic-Data.csv")
stats


#-----------------------Exploring data
nrow(stats)
ncol(stats)
head(stats, n=5)
tail(stats)
str(stats)
summary(stats)

?levels
unique(stats$Income.Group)
str(stats$Income.Group)
levels(stats$Income.Group) <- list(1 = "High income", 2 = "Upper middle income", 3 = "Lower middle income", 4 = "Lower middle income") )
stats$Income.Group <- factor(stats$Income.Group)
str(stats)


#-----------------------Using $ sign 
stats[3, 3]
stats$Country.Name
stats$Country.Name[1:15]
stats[,3]
levels(stats$Income.Group)


#----------------------Basic operation in df
stats[1:10,]
is.data.frame(stats[1,])
is.vector(stats[1,])
is.factor(stats[1,])

stats[,1]
is.data.frame(stats[,1])
is.vector(stats[,1])
stats[,1, drop=F]
is.data.frame(stats[,1, drop=F])

#multiply column
stats$Birth.rate * stats$Internet.users

#add column
head(stats)
stats$Calc <- stats$Birth.rate*stats$Internet.users
dim(stats)

summary(stats$Birth.rate)
str(stats)
rm(stats$cal)
str(stats)
rm(stats[,"cal"])
stats$cal <- NULL
str(stats)



#-----Filtering Dataframe
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Internet.users < 2,]

stats[stats$Birth.rate >= 40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income",]

stats[stats$Country.Name == "Malta",]




