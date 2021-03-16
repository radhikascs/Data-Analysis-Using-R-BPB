install.packages("https://cran.r-project.org/bin/windows/contrib/3.3/RGtk2_2.20.31.zip", repos=NULL)
install.packages("rattle")
install.packages("rpart")
install.packages("rpart.plot")
library(ggplot2) # Data visualization
library(rpart)
library(rpart.plot)
library(rattle)
install.packages("tree")
library(tree)
library(readxl)
Employee_data<- read_excel("Attrition.xlsx")
summary(Employee_data)
str(Employee_data)
set.seed(1)
Employee_data[sapply(Employee_data, is.factor)] <- data.matrix(Employee_data[sapply(Employee_data, is.factor)]) #factorised features
plotmd(Employee_data, class=NULL,main="Plot showing multivariate data for clusters as the parallel coordinates ") #the plot 
