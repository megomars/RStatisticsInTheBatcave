# R-Lang Statistics in the Batcave

## A review of R, the statistics programming language.

> Updated to include only the useful commands - 1 year into using the language.

##### Theory
* R is a programming language based on S, R is the name of the language, R-Studio is the IDE
* R has features for - data access, data cleaning, analysis and data reporting.
* **Comments are written with a # (shift-command-c for multiple lines)**
* **Run commands with - Command-Enter**

##### Basics
* print("hello world")
* **x <- 1:5 (assignment operator [opt -])(the variable is a vector)(x gets 1 to 5)**
* **y <- c(4,5,6) (combine or concatenate)**
* seq(30,0 by = -3)
* x <- c(3,4,5) & y <- c(4,3,1)n - x+y is the sum of the vectors
* rm(x), rm(x,y), rm(list = ls()) - clears your workspace/memory

##### Working with packages
* Packages by [domain](https://cran.r-project.org/web/views/) and [alphabetical](https://cran.r-project.org/web/packages/available_packages_by_name.html)
* install.packages("ggplot2")
* library("ggplot2") OR require("ggplot2")- activate the package
* ?ggplot2 - documentation for each package (also includes vignettes)

##### Working with data
* ?datasets - show the built in **data(airmiles) - load that data**
* airmiles - loads the values in the console
* **Getting to know your data**
	* **str(airmiles)** - shows you the structure of your data
	* **dim(airmiles)** - dimensions of your data
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
	* round(dataset,2)
	* **typeof(airmiles)** - type of data
	* **class(airmiles)** - class of data
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
	* **sprintf("%s hello %d")** - concatenates two or more terms
	* **sub("old","new", "This is very old")** - substitute "old" for "new"
	* **substr("Text goes here", 4, 8)** - Text, start, stop

* **Importing data**
	* trends.txt <- read.table("GoogleTrends.txt", header = TRUE, sep= "\t") - Read data from a text file and set the separator to tabs
	* View(trends.txt) - views a text file
	* trends.csv <- read.csv("GoogleTrends.csv", header = TRUE) - read data from a csv file


##### working with charts
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
