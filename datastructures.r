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


#-------------------------------------------
# Matrices
# Matrices are a collection of vectors or 3d arrays. All components have the same datatype.
A = matrix( 
  c(2, 4, 3, 1, 5, 7), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE)        # fill matrix by rows 
matrix(1:9, nrow=3, byrow=TRUE) # create a square matrix
colnames(A) <- c("c1","c2","c3") # add names for columns
rownames(A) <- c("r1","r2","r3") # add names for rows
rowSums(A) # calculate totals for each row of a matrix
colSums(A) # calculate totals for each column of a matrix
dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), c("US", "non-US"))
cbind(matrix1,matrix2) # add a new entry with values 
rbind(matrix1,matrix2) # add a new variable with values
my_matrix[,1] # select all the rows but only first column
my_matrix[1,] # select all columns of first row
t(B)          # transpose of B 
c(B) # deconstruct a matrix which combines all column vectors into one.



#-------------------------------------------
# Data frames
# Data frames are like spreadsheets. Variables are stored in columns and observations in rows. Each column must have the same data type.
df <- data.frame(a,b,c,d) # where a, b, c, d are vectors
df[1,3] # first row, third column
my_df[1:3,2:4] # selects rows 1, 2, 3 and columns 2, 3, 4
my_df[,"NameOfColumn"] # selects values of "NameOfColumn" column
my_df$NameOfColumn # selects values of "NameOfColumn" column
planets_df[1:5,c("name","diameter")] # select first five values of both these columns
subset(my_df, subset = some_condition)
df_sub <- subset(planets_df, type=="Gas giant")
subset(planets_df, diameter<1)
order() # A function that gives you the ranked position of each element
#funny <- c(5,9,2,3) ... order(funny) ... 3 4 1 2
funny[order(funny)] # orders the values - 2 3 5 9
order(dataset, na.last = TRUE, decreasing = FALSE, method = c("auto", "shell", "radix"))



#-------------------------------------------
# Lists
# Lists are like JSON.
my_list <- list(my_vector,my_matrix,my_df) # these three components can be vectors, matrices or data frames.
my_list <- list(name1 = your_comp1, name2 = your_comp2) # you can give each list a name
names(my_list) <- c("name1", "name2") # add names to existing list
shining_list[[1]]
shining_list[["reviews"]]
shining_list$reviews
newlist <- c(oldlist,year=1980) # add new variable with observation = 1980 to the list



#-------------------------------------------
# Factors
# Factors are a statistical data type used to store categorical/nominal variables
factor_create <-factor(gender_vector)
sample_df$race <- factor(sample_df$race) # set the race column as a factor
levels(sample_df$race) # see the levels of our race column
factor(temp, order=TRUE, levels=c("L","M","H")) # ordinal data
levels(factor_survey_vector) <- c("Female","Male") # overrides the default levels and values
summary(temp)
mtcars$fcyl <- as.factor(mtcars$cyl) # convert a dataset as a factor