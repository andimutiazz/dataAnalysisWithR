#Matrix

Salary
Salary[2,4] #row, column

Salary[,2]
Salary[2,]

x <- matrix(nrow = 5, ncol = 5)
x


Games
MinutesPlayed
Salary

?rm
a <- paste("a", 1:10)
a
b <- paste("b", 10:19)
d <- rbind(a,b)
d
colnames(d) <- letters[1:10]
d

colnames(d) <- c("Y", 1:9)
d

 for (i in 1:10){
   d[i] <- rnorm(100)
 }

d

#create matrix
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5, byrow = T)
A

A[2,3]

B <- matrix(my.data, 2,3) #doesnot work if the matrix size is not suitable

A[2,5]

#rbind() = combine matrix by row

r1 <- c("I", "want", "seblak")
r2 <- c("I", "am", "hungry")
r3 <- c(1,2,3)

C <- rbind(r1, r2, r3)
C
rm(r1, r2, r3)

#cbind() = combine matrix column by column
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)
D

# NAMING DIMENSION
D[2,"c2"]

nr <- c("i","love", "my", "pretty", "dog")
nr
D

row.names(D) <- nr
D


#Give names
ica <- 1:10
names(ica)
names(ica) <- letters[1:10]
ica
ica["d"]

#Clear name
names(ica) <- NULL
ica

#-------

#Name Matrix Dimension
temp.vec <- rep(letters[1:3], each = 3)
temp.vec

bravo <- matrix(temp.vec, 3, 3)
bravo

rownames(bravo) <- letters[9:11]
bravo
colnames(bravo) <- LETTERS[20:22]
bravo

bravo[2,2] <- 0
bravo
rownames(bravo)

bravo[,2] <- rnorm(3)
bravo


#Matrix Operation
Games
rownames(Games)
colnames(Games)

Games["LeBronJames", "2012"]

FieldGoals
round(FieldGoals / Games, 1)

MinutesPlayed
round(MinutesPlayed / Games)


goal <- round(FieldGoals / FieldGoalAttempts, 1)
goal

avg.goalRate <- rowMeans(goal)
performance <- cbind(goal, avg.goalRate)
order(performance$avg.goalRate)


