pam.res <- pam(df, 2)
pam.res
dd <- cbind(USArrests, cluster = pam.res$cluster)
head(dd, n = 3)
# Cluster numbers
head(pam.res$clustering)
fviz_nbclust(df, pam, method = "silhouette")+
  theme_classic()
pam.res <- pam(df, 6)
print(pam.res)
dd <- cbind(Mall_Customers, cluster = pam.res$cluster)
head(dd, n = 3)
pam.res$medoids
head(pam.res$clustering)
fviz_cluster(pam.res,
             ellipse.type = "t", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             ggtheme = theme_classic()
)