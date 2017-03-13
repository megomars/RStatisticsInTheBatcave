# R-Lang Statistics in the Batcave

## A review of R, the statistics programming language.

1. R is a programming language based on S, R is the name of the language, R-Studio is the IDE
2. R has features for - data access, data cleaning, analysis and data reporting.
3. **Comments are written with a # (shift-command-c for multiple lines)**
4. **Run commands with - Command-Enter**
5. R works on vectors by showing index numbers [1], R is also case sensitive.
6. **Clear console window with - Control-L**
7. Display numbers 1-100 - 1:100
8. print("hello world")
9. ##Declaring variables
10. **x <- 1:5 (assignment operator [opt -])(the variable is a vector)(x gets 1 to 5)**
11. **y <- c(4,5,6) (combine or concatenate)**
12. x <- c(3,4,5) & y <- c(4,3,1)n - x+y is the sum of the vectors
13. browseURL("http://google.com")
14. rm(x), rm(x,y), rm(list = ls()) - clears your workspace/memory

15. ##Working with packages
16. Load packages - search()
17. Packages by [domain](https://cran.r-project.org/web/views/) and [alphabetical](https://cran.r-project.org/web/packages/available_packages_by_name.html)
18. install.packages("ggplot2")
19. ?install.packages
20. library("ggplot2") OR require("ggplot2")- activate the package
21. library(help = "ggplot2") - documentation for each package
22. **browseVignettes(package = "ggplot2") - brings up a list of examples**
23. browseVignettes() - brings up list of vignettes
24. **update.packages()**
25. detach("package:ggplot2", unload = TRUE) - unload the package - remove.packages()

26. ##Working with built-in datasets
27. ?datasets - show the built in **data(airmiles) - load that data**
28. airmiles - loads the values in the console
29. **str(airmiles)** - shows you the metadata of airmiles
30. anscombe - common data set for stats
31. create sequential data - x <- 1:10 (x gets one to ten)
32. seq(30,0 by = -3)
33. **scan()**
34. ls() - list all objects in viewer

35. ##Working with text and csv files
36. **read data from a text file** - trends.txt <- read.table("/Volumes/2017MSC/R\ Statistics\ Essential\ Training/Rdata/GoogleTrends.txt", header = TRUE, sep= "\t") - set the separator to tabs
37. **View(trends.txt)** - views a text file
38. **read data from a csv file** - trends.csv <- read.csv("/Volumes/2017MSC/R\ Statistics\ Essential\ Training/Rdata/GoogleTrends.csv", header = TRUE)
39. **plot(UCBAdmission)**
40. To see marginal frequencies use **margin.table(UCBAdmission, 1)**
41. obj.property <- margin.table(UCBAdmission, 1) - stores this value into a table
42. **barplot(obj.property)**
43. **prop.table(obj.property)** - shows proportions or percentages
44. round(prop.table(obj.property),2)
45. convert to data frame - admit <- as.data.frame.table(UCBAdmission)
46. Convert tables as data frames -
    admit.rows <- as.data.frame(l apply(as.data.frame.table(UCBAdmissions), function(x)rep(x, as.data.frame.table(UCBAdmissions)$Freq)))[, -4]
47. data1 <- data2[,-4] - remove the fourth column
48. obj.property[1:10, ] - show me the first 10 rows with all columns

49. ##WORKING WITH COLOR
50. colors() - complete list of 657 colors
51. barplot(mylovelydata, col = "tan1") - based on name
52. barplot(mylovelydata, col = colors()[44]) - based on the vector position
53. barplot(mylovelydata, col = rgb(203, 201,34, max=255)) - standard RGB
54. **barplot(mylovelydata, col = "#FB9D04") - standard hex notation**
55. barplot(mylovelydata, col = c("#fb9d04","#ffffff"))
56. ?palette - barplot(mylovelydata, col = heat.colors(6)) - barplot(mylovelydata, col = terrain.colors(6))
57. install.packages("RColorBrewer")
58. display.brewer.pal(20,"YlOrRd")
59. **barplot(mylovelydata, col = brewer.pal(4,"YlOrRd"))**

60. ##One variable charts
61. plot(chickwts$feed) //the dataset and the column of data
62. feeds <- table(chickwts$feeds)
63. // BAR CHART
barplot(feeds[order(feeds,decreasing=TRUE)]) // can order one variable by another, increasing is the default
64. par(oma = c(1, 1, 1, 1)) // change the parameter of the outline margin: bottom, left, top , right
65. par(mar = c(4, 4, 5, 3)) // change the parameter of the margin
66. // combine everything barplot(feeds[order(feeds)],horiz = TRUE, las = 1, col=("#fb9d04"), border = NA, main = "This is the main label\nthat will go in two lines", xlab = "Number of chicks")
67. ?par
68. // PIE CHARTS
pie(feeds)
69. pie(feeds[order(feeds, decreasing = TRUE)], init.angle = 90, clockwise = TRUE, col=c("#fb9d04", "#fb0000", "#990000"), main="Headline")
70. // HISTOGRAMS
