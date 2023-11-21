#Importing dataset
movie2 <- read.csv("/Users/andimutiazz/Documents/PROJECT/course/R/sec6/Section6-Homework-Data.csv")
head(movie2)
str(movie2)

#Change the column names
colnames(movie2) <- c("Day", "Director", "Genre", "Title", "Release.Date", "Studio", 
                      "Adj.GrossMillion", "BudgetMillion", "GrossMillion", "IMDB.Rating",
                      "MovieLens.Rating", "Overseas.RevMillion", "Overseas.Rev%", 
                      "Profit.Million", "Profit%", "RuntimeMin", "US.RevMillion", "Gross%US")

head(movie2)
head(movie2$Genre == "action")
head(movie2[movie2$Genre == "action",])

#Filtering the data
selectedGenre <- movie2[movie2$Genre %in% 
                          c("action", "adventure", "animation", "comedy", "drama") &
                          movie2$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB"),]

str(selectedGenre)
unique(selectedGenre$Genre)
unique(selectedGenre$Studio)


#Importing font
system('system_profiler SPFontsDataType')
install.packages("extrafont")
library(extrafont)
font_import()
fonts()




#Plotting
m <- ggplot(data = selectedGenre, aes(x = Genre, y = `Gross%US`))
m <- m + 
  geom_jitter(aes(size = BudgetMillion, color = Studio)) + 
  scale_size(range = c(0.5, 3)) + 
  geom_boxplot(alpha = 0.5, outlier.colour = NA) +
  ggtitle("Domestic Gross % By Genre")
m

m <- m +
  theme(axis.title = element_text(color = "Blue", size = 15), 
        axis.text = element_text(size = 10),
        plot.title = element_text(size = 15, hjust = 0.5),
        text = element_text(family = "Comic Sans MS")
        )
m$labels$size <- "Budget $M"
m

