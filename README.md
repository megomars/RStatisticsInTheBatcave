# R-Lang Statistics in the Batcave

## A review of R, the statistics programming language.

> Updated to include only the useful commands - 1 year into using the language.

### Theory
* R is a programming language based on S, R is the name of the language, R-Studio is the IDE
* R has features for - data access, data cleaning, analysis and data reporting.
* **Comments are written with a # (shift-command-c for multiple lines)**
* **Run commands with - Command-Enter**


### Basic commands
* print("hello world")
* **x <- 1:5 (assignment operator [opt/alt -])(the variable is a vector)(x gets 1 to 5)**
* **y <- c(4,5,6) (combine or concatenate)**
* seq(30,0, by = -3) - 30,29,28...2,1,0
* seq(10,0, length.out=5) - 10.0  7.5  5.0  2.5  0.0
* rep(1:2, times=3) - 121212
* rep(1:2, each=3) - 111222
* x <- c(3,4,5) & y <- c(4,3,1)n - x+y is the sum of the vectors
* rm(x), rm(x,y), rm(list = ls()) - clears your workspace/memory
* ls() - view your workspace


### Working with packages
* Packages by [domain](https://cran.r-project.org/web/views/) and [alphabetical](https://cran.r-project.org/web/packages/available_packages_by_name.html)
* install.packages("ggplot2")
* search() - view all the installed functions
* library("ggplot2") OR require("ggplot2")- activate the package
* result <- require("data.table") - returns FALSE if package does not exist, good for attaching packages dynamically
* ?ggplot2 - documentation for each package (also includes vignettes)

### Working with data
* ?datasets - show the built-in **data(airmiles) - load that data**
* airmiles - loads the values in the console
* **Getting to know your data**
	* **str(airmiles)** - shows you the structure of your data
	* **dim(airmiles)** - dimensions of your data, rows, columns
	* **summary(airmiles)** - summary of your data
	* **length(airmiles)** - number of columns in your dataframe
	* **head(airmiles, n=10)** - first 10 values
	* **tail(airmiles, n=10)** - last 10 values
	* **min(airmiles)** - min value
	* **max(airmiles)** - max value
	* **plot(airmiles)** - simple plot
	* **hist(airmiles, breaks=10)** - simple histogram with 10 buckets
	* **mean(airmiles)** - simple average
	* **median(airmiles)** - simple median
	* **round(dataset,2)** - round to two decimal points
	* **typeof(airmiles)** - type of data (double, character, logical)
	* **class(airmiles)** - class of data (numeric, character, logical)
	* **table(airmiles)** - display data in a table
	* **margin.table(UCBAdmission, 1)** - view marginal frequencies
	* **obj.property <- margin.table(UCBAdmission, 1)** stpres value in table
	* **prop.table(obj.property)** - shows proportions or percentages

* **Basic data manipulation**
	* data1 <- data2[,-4] - remove the fourth column
	* obj.property[1:10, ] - show me the first 10 rows with all columns
	* u&v - u AND v, u|v - u OR v, !u - not u
	* dataset$firstvalue - select column called firstvalue
	* **is.integer(airmiles)** - test if integer
	* **as.integer(airmiles)** - convert to integer
	* **is.character(airmiles)** - test if character
	* **as.character(airmiles)** - convert to character
	* **is.data.frame(airmiles)** - test if data frame
	* **as.data.frame(airmiles)** - convert to dataframe
	* **paste("First","Last")** - concatenates two or more terms
	* **paste0("a","b","c") - concatenates without spaces
	* **sprintf("%s hello %d", "Sam", 100)** - concatenates two or more terms with a C syntax (%s string, %d decimal)
	* **sub("old","new", "This is very old")** - substitute "old" for "new"
	* **substr("Text goes here", start=4, stop=6)** - Text, start, stop

* **Importing data**
	* trends.txt <- read.table("GoogleTrends.txt", header = TRUE, sep= "\t") - Read data from a text file and set the separator to tabs
	* View(trends.txt) - views a text file
	* trends.csv <- read.csv("GoogleTrends.csv", header = TRUE) - read data from a csv file

#### Vector commands - (one dimensional array): The elements in a vector all have the same data type. A vector is a sequence of data elements of the same basic type. Members in a vector are officially called components.

* vec <- c(1,2,3) - new vector with three values
* vec[1] - first value
* vec[c(1,3)] same as vec[1:3] - both select the first to third values in a vector.
* a <- c(1,2,3)      b <- c(4,5,6)     a+b    a-b    a*b    a/b     - 5 7 9
* vec["NameOfElement"] - selects column with name "NameOfElement"
* conditional_select <- vec[1:5]>0 - store those values as booleans where the first five values are >0
* selection_vector <- poker_vector > 0 store those values as booleans where the entire vectors are >0
* names(vec) <- c("A","B","C") - give names to the values
* unname(vec) - return no names
* sum(vec) - add up all values in vector
* vec1 >= vec2 - returns TRUE or FALSE
* selection_vector <- poker_vector > 0
* poker_winning_days <- poker_vector[selection_vector]


#### Factor commands - statistical data type used to store categorical/nominal variables
* factor_create <-factor(gender_vector)
* factor(temp, order=TRUE, levels=c("L","M","H")) #ordinal data
* levels(factor_survey_vector) <- c("Female","Male") # overrides the default levels and values
* summary(temp)
* mtcars$fcyl <- as.factor(mtcars$cyl) - convert a dataset as a factor

#### Matrix commands - (two dimensional array): The elements in a matrix all have the same data type. A matrix is a collection of data elements arranged in a two-dimensional rectangular layout.
 A = matrix( 
   c(2, 4, 3, 1, 5, 7), # the data elements 
   nrow=2,              # number of rows 
   ncol=3,              # number of columns 
   byrow = TRUE)        # fill matrix by rows 
* matrix(1:9, nrow=3, byrow=TRUE) - create a square matrix
* colnames(A) <- c("c1","c2","c3") - add names for columns
* rownames(A) <- c("r1","r2","r3") - add names for rows
* rowSums(A) - calculate totals for each row of a matrix
* colSums(A) - calculate totals for each column of a matrix
* dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), c("US", "non-US"))
* cbind(matrix1,matrix2) - add a new entry with values 
* rbind(matrix1,matrix2) - add a new variable with values
* my_matrix[,1] - select all the rows but only first column
* my_matrix[1,] - select all columns of first row
* t(B)          - transpose of B 
* c(B) - deconstruct a matrix which combines all column vectors into one.

#### Dataframe commands - (two-dimensional objects) - Variables as columns and observations as rows. Different columns can be of different data type.
* df <- data.frame(a,b,c,d) - where a, b, c, d are vectors
* df[1,3] - first row, third column
* my_df[1:3,2:4] - selects rows 1, 2, 3 and columns 2, 3, 4
* my_df[,"NameOfColumn"] OR my_df$NameOfColumn- selects values of "NameOfColumn" column
* planets_df[1:5,c("name","diameter")] - select first five values of both these columns
* subset(my_df, subset = some_condition)
* df_sub <- subset(planets_df, type=="Gas giant")
* subset(planets_df, diameter<1)
* order() - A function that gives you the ranked position of each element
* E.g. funny <- c(5,9,2,3) ... order(funny) ... 3 4 1 2
* funny[order(funny)] ... 2 3 5 9 - orders the values
* order(dataset, na.last = TRUE, decreasing = FALSE, method = c("auto", "shell", "radix"))


#### List commands - (Super data type) A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.

* my_list <- list(my_vector,my_matrix,my_df) - these three components can be vectors, matrices or data frames.
* my_list <- list(name1 = your_comp1, name2 = your_comp2) - you can give each list a name
* names(my_list) <- c("name1", "name2") - add names to existing list
* shining_list[[1]] .... shining_list[["reviews"]] .... shining_list$reviews
* shining_list[[2]][1] select the first observation of the second variable
* newlist <- c(oldlist,year=1980) - add new variable with observation = 1980 to the list

## INTERMEDIATE R

#### Conditionals
* **Logical operators
	* TRUE == TRUE
	* TRUE != FALSE
	* 3<5 - TRUE   5>2 - TRUE
	
```R
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
linkedin>facebook - FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
```
* AND &, OR |, NOT !

* **if statement**
```R
if(i>80){
	print("excellent")
}else if (i < 80 & i > 50){
	print("passed")
} else{
	print("failed")
}
```

#### Loops
* **For loop**
```R
	* for (var i in 1:4){
		#some code
	}
```
```R
#NO LOOPING INDEX
cities <- c("Doha", "Al Khor", "Al Wakra")
cities2 <- list("Doha", "Al Khor", "Al Wakra") - same result
	* for (city in cities){
		print (city)
	}
	# [1] Doha
	# [1] Al Khor
	# [1] Al Wakra
```
```R
	* for (city in cities){
		if (nchar(city) == 6{
		break  OR  next - stop or skip over it
		}
		print(city)
	}
```

```R
lapply(cities,class) - retrieves the classes for each of the cities *Apply a Function over a List or Vector*
unlist(lapply(cities,nchar)) - returns just the values
lapply(oil_prices, triple) - list or data-frame and function to apply to it
lapply(oil_prices, multiply, secondarg=3)
sapply(cities,class) - returns a simplified version of lapply
sapply(cities,nchar) - returns the length of each city - Durban  6  Cape Town  9   Johannesburg   12
```
```R
#CONTAINS LOOPING INDEX
cities <- c("Doha", "Al Khor", "Al Wakra")
	* for (i in 1:length(cities)){
		print (cities[i])
	}
```

```R
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row ",i,"and column ",j,"the board contains ", ttt[i,j]))
  }
}
```

* **While loop**
```R
	* while (i<5){
		#some code
		i<-i+1
	}
```

#### Functions

* args(sd) - arguments of a function
* na.rm = TRUE - remove all NA values
##### Writing functions
```R
func <- function(x){
	#do something
	return(x*3) - you can either explicitly return a value otherwise the last statement is returned
}
```
Create default argument value
```R
func <- function(x,y=1){
	x*y
}
```
Dice throwing function
```R
throw_die <- function() {
  number <- sample(1:6, size = 1)
  number
}
throw_die()
```

#### working with charts
* install.packages("RColorBrewer")
**barplot(obj.property)**
* colors() - complete list of 657 colors
* barplot(mylovelydata, col = "tan1") - based on name
* barplot(mylovelydata, col = colors()[44]) - based on the vector position
* barplot(mylovelydata, col = rgb(203, 201,34, max=255)) - standard RGB
* **barplot(mylovelydata, col = "#FB9D04") - standard hex notation**
* barplot(mylovelydata, col = c("#fb9d04","#ffffff"))
* ?palette - barplot(mylovelydata, col = heat.colors(6)) - barplot(mylovelydata, col = terrain.colors(6))
* 
* display.brewer.pal(20,"YlOrRd")
* **barplot(mylovelydata, col = brewer.pal(4,"YlOrRd"))**
* plot(chickwts$feed) //the dataset and the column of data
* feeds <- table(chickwts$feeds)
barplot(feeds[order(feeds,decreasing=TRUE)]) // can order one variable by another, increasing is the default
* par(oma = c(1, 1, 1, 1)) // change the parameter of the outline margin: bottom, left, top , right
* par(mar = c(4, 4, 5, 3)) // change the parameter of the margin
* // combine everything barplot(feeds[order(feeds)],horiz = TRUE, las = 1, col=("#fb9d04"), border = NA, main = "This is the main label\nthat will go in two lines", xlab = "Number of chicks")
* ?par
pie(feeds)
* pie(feeds[order(feeds, decreasing = TRUE)], init.angle = 90, clockwise = TRUE, col=c("#fb9d04", "#fb0000", "#990000"), main="Headline")
