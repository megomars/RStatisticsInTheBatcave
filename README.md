# R-Lang Statistics in the Batcave

## A review of R, the statistics programming language.

### Updated to include only the useful commands - 1 year into using the language.

* R is a programming language based on S, R is the name of the language, R-Studio is the IDE
* R has features for - data access, data cleaning, analysis and data reporting.
* **Comments are written with a # (shift-command-c for multiple lines)**
* **Run commands with - Command-Enter**
* R works on vectors by showing index numbers [1], R is also case sensitive.
* print("hello world")
* **x <- 1:5 (assignment operator [opt -])(the variable is a vector)(x gets 1 to 5)**
* **y <- c(4,5,6) (combine or concatenate)**
* x <- c(3,4,5) & y <- c(4,3,1)n - x+y is the sum of the vectors
* rm(x), rm(x,y), rm(list = ls()) - clears your workspace/memory

##Working with packages
* Packages by [domain](https://cran.r-project.org/web/views/) and [alphabetical](https://cran.r-project.org/web/packages/available_packages_by_name.html)
* install.packages("ggplot2")
* library("ggplot2") OR require("ggplot2")- activate the package
* ?ggplot2 - documentation for each package

##Working with built-in datasets
* ?datasets - show the built in **data(airmiles) - load that data**
* airmiles - loads the values in the console
* **str(airmiles)** - shows you the metadata of airmiles
* seq(30,0 by = -3)

##Working with text and csv files
* **read data from a text file** - trends.txt <- read.table("/Volumes/2017MSC/R\ Statistics\ Essential\ Training/Rdata/GoogleTrends.txt", header = TRUE, sep= "\t") - set the separator to tabs
* **View(trends.txt)** - views a text file
* **read data from a csv file** - trends.csv <- read.csv("/Volumes/2017MSC/R\ Statistics\ Essential\ Training/Rdata/GoogleTrends.csv", header = TRUE)
* **plot(UCBAdmission)**
* To see marginal frequencies use **margin.table(UCBAdmission, 1)**
* obj.property <- margin.table(UCBAdmission, 1) - stores this value into a table
* **barplot(obj.property)**
* **prop.table(obj.property)** - shows proportions or percentages
* round(prop.table(obj.property),2)
* convert to data frame - admit <- as.data.frame.table(UCBAdmission)
* Convert tables as data frames -
    admit.rows <- as.data.frame(l apply(as.data.frame.table(UCBAdmissions), function(x)rep(x, as.data.frame.table(UCBAdmissions)$Freq)))[, -4]
* data1 <- data2[,-4] - remove the fourth column
* obj.property[1:10, ] - show me the first 10 rows with all columns

##WORKING WITH COLOR
* colors() - complete list of 657 colors
* barplot(mylovelydata, col = "tan1") - based on name
* barplot(mylovelydata, col = colors()[44]) - based on the vector position
* barplot(mylovelydata, col = rgb(203, 201,34, max=255)) - standard RGB
* **barplot(mylovelydata, col = "#FB9D04") - standard hex notation**
* barplot(mylovelydata, col = c("#fb9d04","#ffffff"))
* ?palette - barplot(mylovelydata, col = heat.colors(6)) - barplot(mylovelydata, col = terrain.colors(6))
* install.packages("RColorBrewer")
* display.brewer.pal(20,"YlOrRd")
* **barplot(mylovelydata, col = brewer.pal(4,"YlOrRd"))**

##One variable charts
* plot(chickwts$feed) //the dataset and the column of data
* feeds <- table(chickwts$feeds)
barplot(feeds[order(feeds,decreasing=TRUE)]) // can order one variable by another, increasing is the default
* par(oma = c(1, 1, 1, 1)) // change the parameter of the outline margin: bottom, left, top , right
* par(mar = c(4, 4, 5, 3)) // change the parameter of the margin
* // combine everything barplot(feeds[order(feeds)],horiz = TRUE, las = 1, col=("#fb9d04"), border = NA, main = "This is the main label\nthat will go in two lines", xlab = "Number of chicks")
* ?par
pie(feeds)
* pie(feeds[order(feeds, decreasing = TRUE)], init.angle = 90, clockwise = TRUE, col=c("#fb9d04", "#fb0000", "#990000"), main="Headline")
