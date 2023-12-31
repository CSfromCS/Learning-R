library(readr)
data <- readr::read_csv("4063Midterm.csv")

# City Toronto only
myCity <- data[data$City == "Toronto", c("EdYears", "Cosmatics")]
# View(myCity)


# 1) Use a function such as factoextra::fviz_nbclust with silhouette method to identify the optimum number of clusters of customers that can be identified in your data if you wanted to use Hierarchical Clustering?

# install.packages("factoextra")

library(factoextra)
library(cluster)

# silhouette method
hc_s <- factoextra::fviz_nbclust(myCity, FUNcluster = hcut, method = "silhouette")
print(hc_s)
hc_optimal_k <- 2
# 2) Use a function such as stats::hclust to build your hierarchical cluster model and use factoextra::fviz_cluster to visualize the optimum number of clusters you identified above.

# Hierarchical Clustering
hc <- stats::hclust(dist(myCity))
hc
cut_tree <- cutree(hc, k = hc_optimal_k)
cut_tree
# Visualize the dendrogram
dend <- as.dendrogram(hc)
dend
# Create a clustering object using cut_tree
hc_cluster <- factoextra::fviz_cluster(list(data = myCity, cluster = cut_tree))
hc_cluster

# Plot the clustering object
print(hc_cluster)

# 3) Use  a function such as factoextra::fviz_nbclust with silhouette method to identify the optimum number of clusters of customers that can be identified in your data if you wanted to use K-Means Clustering?

# silhouette method
km_s <- factoextra::fviz_nbclust(myCity, FUNcluster = kmeans, method = "silhouette")
print(km_s)
km_optimal_k <- 2

# 4) Use a function such as stats::Kmeans to build your Kmeans cluster model and use factoextra::fviz_cluster to visualize the optimum number of clusters you identified above.

# K-Means Clustering
km <- stats::kmeans(myCity, centers = km_optimal_k)
km
# Visualize the clustering object
km_cluster <- factoextra::fviz_cluster(list(data = myCity, cluster = km$cluster))
km_cluster

# Plot the clustering object
print(km_cluster)

# 5) Compare and contrast the visualizations of the clusters detected by two Machine Learning models. Which one has done a better job in clustering?
# put the two plots side by side
library(gridExtra)
grid.arrange(hc_cluster, km_cluster, ncol = 2, nrow = 1, top = "Hierarchical Clustering vs. K-Means Clustering", left = "Hierarchical Clustering", right = "K-Means Clustering")

print("To determine what clustering is better will depend on many factors. We can quantitatively use different metrics that measure how separate and distinct the clusters are. We can also visually see what clustering makes more sense. In this scenario, both are very similar. However, I would say that the Hierarchical Clustering is better because it is more distinct and separate. K-Means Clustering on the other hand is more balanced and has a more even distribution between the two optimal groups.")
