#subset

x <- letters[1:5]
x

x[1]
x[c(1,3,2)]

Games
Games[1:3,6:10]
Games[c(1,10), ]
Games[,c("2008","2009")]
Games[1,]

is.matrix(Games[1,]) 
is.matrix(Games[1,,drop = F]) #adding drop = F to perceive the matrix form

#visualizing subsetting

Data <- MinutesPlayed[1:3,]
Data
matplot(t(Data), type = "b", pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1:3], col = c(1:4,6), pch = 15:18, horiz = F)



#Function
#input parameters into the brackets

myplot <- function(data, rows = 1:10, color=1:4, rep=6){
  Data <- data[rows,,drop = F]
  matplot(t(Data), type = "b", pch = rows, col = c(color, rep), cex = 0.3, lty = 1)
  legend("bottomleft", inset = 0.001, legend = Players[rows], col = c(color, rep), pch = rows, horiz = F, cex = 0.5)
  
}
myplot(Games)

#Insight
#Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)


#In-Game Matrix
myplot(MinutesPlayed)
myplot(Points)

#In-Game Matrix Normalized after considering the players that affected by injury(anomalies in the data)
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observation
myplot(MinutesPlayed/Games)
myplot(Games)

#Who played most time efficiently
myplot(FieldGoals/MinutesPlayed)

#Player Style
myplot(Points/FieldGoals)
