Mall_Customers=read.csv("Mall_Customers.csv")
View(Mall_Customers)
df <- scale(Mall_Customers)
df
install.packages("factoextra")
library(factoextra)
fviz_nbclust(df, kmeans, method = "wss") +geom_vline(xintercept = 4, linetype = 2)
set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)
km.res
km.res$cluster

print(km.res)
fviz_cluster(km.res, data = df,palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),ellipse.type = "euclid",star.plot = TRUE,repel = TRUE, ggtheme = theme_minimal())
