#Just some good old data structures

# Vectors
# Vectors are 2d arrays. All have the same data type.

vec <- c(1,2,3,4,5)
#First component 
vec[1]
#Last component
vec[length(vec)]
#First two components
vec[1:2]
#Last two components (hard coded - must be a better way)
vec[5:4]
#Last two components using the c notiation (this is better)
vec[c(length(vec),length(vec)-1)]
#Are two vectors equal?
v1<-c(8,9,10)
v2<-c(2*4,3*3,5*2)
v1==v2
#Give the vectors some names
names(vec)<- c("one","two","three","four","five")
#Return only the values of a vector
unname(vec)
#Reference a specific vector
vec["three"]
#Append to vector
vec<-c(vec,6,7,8,9)
#Remove from vector - kills number two
vec<-vec[-2]
#Injects component at a particular location
vec[2]<-2
vec
#Check the length of a vector
length(vec)
#get to know your vec - 10 steps
str(vec)
summary(vec)
table(vec)
View(vec)
max(vec)
min(vec)
mean(vec)
median(vec)
typeof(vec)
class(vec)
length(vec)
plot(vec)
hist(vec)
head(vec)
tail(vec)
sum(vec)
#combine vectors
v1+v2
#conditional selection of a vector in two steps
cvecindex <- vec>5
cvec <-vec[cvecindex]
cvec

# Matrices

# Data frames

# Lists

# Factors