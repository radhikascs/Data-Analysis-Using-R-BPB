women
View(women)
relation <- lm(women$height ~ women$weight)
print(relation)
plot(women$height,women$weight,col = "blue",main = "Height & Weight Regression",abline(lm(women$weight ~ women$height)),cex = 1.3,pch = 16,xlab = "Height in cm",ylab = "Weight in kg")