# R-Lang Statistics in the Batcave

## A review of R, the statistics programming language.

1. R is a programming language based on S
2. R is the name of the language, R-Studio is the IDE
3. R has features for - data access, data cleaning, analysis and data reporting.
4. **Comments are written with a # (shift-command-c for multiple lines)**
5. **Run commands with - Command-Enter**
6. R works on vectors by showing index numbers [1]
7. **Clear console window with - Control-L**
8. Display numbers 1-100 - 1:100
9. print("hello world")
10. **declare variables - x <- 1:5 (assignment operator [opt -])(the variable is a vector)(x gets 1 to 5)**
11. R is case sensitive
12. **y <- c(4,5,6) (combine or concatenate)**
13. x <- c(3,4,5) & y <- c(4,3,1)n - x+y is the sum of the vectors
14. browseURL("http://google.com")
15. rm(x), rm(x,y), rm(list = ls()) - clears your workspace/memory

16. Load packages - library(), search()
17. Packages by [domain](https://cran.r-project.org/web/views/) and [alphabetical](https://cran.r-project.org/web/packages/available_packages_by_name.html)
18. install.packages("ggplot2")
19. ?install.packages
20. library("ggplot2") OR require("ggplot2")- activate the package
21. library(help = "ggplot2") - documentation for each package
22. **browseVignettes(package = "ggplot2") - brings up a list of examples**
23. browseVignettes() - brings up list of vignettes
24. **update.packages()**
25. detach("package:ggplot2", unload = TRUE) - unload the package
25. remove.packages()

26. ?datasets - built in datasets
27. **data(airmiles) - load that data**
28. airmiles - loads the values in the console
29. ?str - shows you the metadata
30. anscombe - common data set for stats

31. create sequential data - x <- 1:10 (x gets one to ten)
32. seq(30,0 by = -3)
33. **scan()**
34. ls() - list all objects in viewer

35. read data from a text file - trends.txt <- read.table("/Volumes/2017MSC/R\ Statistics\ Essential\ Training//Rdata/GoogleTrends.txt", header = TRUE)
36. trends.txt <- read.table("/Volumes/2017MSC/R\ Statistics\ Essential\ Training//Rdata/GoogleTrends.txt", header = TRUE, sep= "\t") - set the separator to tabs
37. View(trends.txt) - views a text file
38. **read data from a csv file** - trends.csv <- read.csv("/Volumes/2017MSC/R\ Statistics\ Essential\ Training//Rdata/GoogleTrends.csv", header = TRUE)
39. **plot(UCBAdmission)**
40. To see marginal frequencies use margin.table(UCBAdmission, 1)
41. obj.property <- margin.table(UCBAdmission, 1) - stores this value into a table
42. **barplot(obj.property)**
43. **prop.table(obj.property)** - shows proportions or percentages
44. round(prop.table(obj.property),2)
45. convert to data frame - admit <- as.data.frame.table(UCBAdmission)
46. Convert tables as data frames - 
    admit.rows <- as.data.frame(lapply(as.data.frame.table(UCBAdmissions), function(x)rep(x, as.data.frame.table(UCBAdmissions)$Freq)))[, -4]
47. data1 <- data2[,-4] - remove the fourth column
48. obj.property[1:10, ] - show me the first 10 rows with all columns
