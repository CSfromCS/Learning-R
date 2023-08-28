# 1 Discrete, Continuous, Nominal, Ordinal, Interval, and Ratio data
discrete_numberOfSiblings <- c(1, 2, 3, 4, 5)
# Discrete data can only take on a finite number of values (OpenLearn, n.d.). For example, the number of siblings a person has is a discrete variable because it can only take on a finite number of values (e.g., 0, 1, 2, 3, 4, 5, etc.).
continuous_height <- c(1.1, 2.242, 3.0, 4.55, 5.001)
# Continuous data can take on an infinite number of values (OpenLearn, n.d.). For example, the height of a person is a continuous variable because it can take on an infinite number of values (e.g., 1.1, 1.11, 1.111, 1.1111, etc.).
nominal_countries <- c("Philippines", "Australia", "Japan", "China", "Korea")
# Nominal data are categorical data without any order (Simplilearn, 2023). For example, the country a person lives in is a nominal variable because there is no order to the countries (e.g., Philippines, Australia, Japan, China, Korea).
ordinal_grades <- c("A", "B", "C", "D", "F")
# Ordinal data are categorical data with an order (Glen, n.d.). For example, the grade a student receives in a class is an ordinal variable because there is an order to the grades (e.g., A, B, C, D, F).
interval_temperature <- c(-21, -0.5, 12, 28.5, 100)
# Interval data are numeric data without a true zero (Glen, n.d.). For example, the temperature outside is an interval variable because there is no true zero (e.g., 0 degrees Fahrenheit does not mean there is no temperature).
ratio_weight <- c(0, 1.5, 3.2, 5.1, 10)
# Ratio data are numeric data with a true zero (Glen, n.d.). For example, the weight of a person is a ratio variable because there is a true zero (e.g., 0 kilograms means there is no weight).

# 2 Relational databases, SQL and NoSQL databases

# SQL or Structure Query Language is a domain-specific language used for managing and querying relational databases (MongoDB, n.d.). It provides commands to create, modify, and query database structures and data. SQL operations include selecting, inserting, updating, and deleting records, as well as creating and modifying tables, indexes, and views (GeeksForGeeks, n.d.). SQL also supports complex operations like joining tables, aggregating data, and performing transactions. SQL databases adhere to the ACID (Atomicity, Consistency, Isolation, Durability) properties, which ensure data integrity and reliability (GeeksForGeeks, n.d.).

# NoSQL or Not Only SQL databases are designed to handle unstructured or semi-structured data and provide more flexible schemas compared to relational databases (GeeksForGeeks, n.d.). NoSQL databases are categorized into various types, each catering to different data models and use cases such as documents.


# 3 SQL and NoSQL Databases

# SQL or relational databases use a structured schema with tables that have predefined columns and data types. They use the concept of rows and columns to store and organize data (MongoDB, n.d.). SQL databases have a rigid schema, where changes to the schema require careful planning and migration to maintain data consistency. SQL databases use the Structured Query Language (SQL) for querying and manipulating data. SQL offers a standardized way to perform complex queries and transactions (GeeksForGeeks, n.d.). Traditional SQL databases might face challenges when scaling horizontally (adding more servers), as they are optimized for vertical scaling (adding more resources to a single server)(MongoDB, n.d.). SQL databases are optimized for complex queries and transactions. They might suffer in terms of performance when handling massive read and write operations. SQL databases are well-suited for applications that require strong data consistency, complex queries, and structured data, such as financial systems and e-commerce platforms (GeeksForGeeks, n.d.).

# NoSQL databases, like MongoDB, offer more flexibility in terms of data model. They typically use documents (e.g., JSON or BSON format) that can vary in structure within the same collection (MongoDB, n.d.). NoSQL databases offer dynamic schemas, allowing changes to the structure without affecting existing data. This is particularly useful for rapidly evolving applications. MongoDB uses a query language similar to JSON, making it more intuitive for developers familiar with modern programming languages. However, complex querying capabilities might be more limited compared to SQL. Many NoSQL databases, including MongoDB, are designed with horizontal scalability in mind. They can distribute data across multiple nodes to handle large amounts of data and traffic (MongoDB, n.d.; GeeksForGeeks, n.d.). NoSQL databases often excel at handling high-speed, read-heavy or write-heavy workloads, making them suitable for applications requiring rapid data access. NoSQL databases are commonly used in scenarios where data is dynamic, rapidly changing, and needs to be stored and retrieved efficiently, such as content management systems, real-time analytics, and IoT applications (GeeksForGeeks, n.d.).

# 4 Supervised, Unsupervised, and Reinforcement Learning

# Supervised learning is a machine learning paradigm where the algorithm learns from labeled training data. In this approach, the algorithm is provided with input-output pairs, where the inputs are features or attributes, and the corresponding outputs are the target values or labels (Loukas, 2020). The goal of supervised learning is to generalize the patterns and relationships present in the training data so that the algorithm can make accurate predictions or classifications on new, unseen data. During training, the algorithm adjusts its internal parameters to minimize the difference between its predictions and the actual target values(Loukas, 2020). Common applications of supervised learning include image classification, spam detection, and regression tasks.

# Unsupervised learning involves training algorithms on data without labeled outputs. Instead of explicit target labels, the algorithm attempts to uncover inherent patterns, structures, or relationships within the data(Loukas, 2020). Clustering and dimensionality reduction are common tasks in unsupervised learning. Clustering algorithms group similar data points together, helping to identify natural groupings in the data. Dimensionality reduction techniques, such as principal component analysis (PCA), aim to reduce the complexity of the data while preserving its essential characteristics(Loukas, 2020). Unsupervised learning is particularly useful when exploring data sets to gain insights or when dealing with data without predefined labels.

# Reinforcement learning is a type of machine learning focused on teaching algorithms how to make decisions by interacting with an environment. The algorithm, called an agent, learns by receiving feedback in the form of rewards or penalties based on the actions it takes(Loukas, 2020). The goal of reinforcement learning is to find the optimal strategy or policy that maximizes the cumulative rewards over time. The agent explores the environment through trial and error, learning from both positive and negative outcomes. Reinforcement learning is well-suited for tasks that involve sequential decision-making and exploration, such as game playing, robotics control, and autonomous systems.

# 5 Real-world applications of machine learning

# An example of supervised learning in a business context is fraud detection in financial transactions. Banks and credit card companies use historical transaction data where each transaction is labeled as either "fraudulent" or "legitimate." By training a supervised learning algorithm on this labeled data, the system learns to recognize patterns associated with fraudulent transactions. When new transactions occur, the system can predict whether a transaction is likely to be fraudulent, helping prevent financial losses and protecting customers.

# Retail companies often use unsupervised learning for customer segmentation. Imagine an e-commerce business with a vast customer base and diverse purchasing behavior. By applying unsupervised clustering algorithms to the purchase history, the company can group customers into segments based on shared characteristics. These segments might reveal different purchasing preferences, allowing the business to tailor marketing campaigns and product recommendations to each group's preferences and needs.

# An example of reinforcement learning in business is optimizing supply chain management. Consider a company that needs to manage inventory levels and shipping decisions across multiple locations. By employing reinforcement learning, the company can model the supply chain as an environment. The agent (algorithm) makes decisions such as when and how much to reorder, balancing the trade-off between minimizing costs and avoiding stockouts. Through interactions with the supply chain, the algorithm learns optimal strategies over time, helping the company streamline operations and reduce costs.

# References

# OpenLearn. (n.d.). Discrete and Continuous Data. Retrieved from https://www.open.edu/openlearn/mod/oucontent/view.php?id=85587&section=1
# Simplilearn. (2023, May 26). What is Nominal Data? Definition, Examples, Variables & Analysis. Retrieved from https://www.simplilearn.com/what-is-nominal-data-article
# Glen, S. (n.d.). Nominal Ordinal Interval Ratio & Cardinal: Examples. Retrieved from https://www.statisticshowto.com/probability-and-statistics/statistics-definitions/nominal-ordinal-interval-ratio/
# MongoDB. (n.d.). Relational vs. Non-Relational Databases. Retrieved from https://www.mongodb.com/compare/relational-vs-non-relational-databases
# GeeksForGeeks. (n.d.). Difference between SQL and NoSQL. Retrieved from https://www.geeksforgeeks.org/difference-between-sql-and-nosql/
# Loukas, S. (2020, June 11). What is Machine Learning: Supervised, Unsupervised, Semi-Supervised and Reinforcement learning methods. Retrieved from https://towardsdatascience.com/what-is-machine-learning-a-short-note-on-supervised-unsupervised-semi-supervised-and-aed1573ae9bb


# Data Visualization in R exercises 
# https://oreilly.com/library/view/r-for-data/9781491910382/ch01.html

install.packages("tidyverse", repos = "http://cran.us.r-project.org")
library(tidyverse)
library(ggplot2)

ggplot2::mpg

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))x

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# left
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# right
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))


# box 
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, y = ..prop.., group = 1)
  )

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

bar <- ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = cut),
    show.legend = FALSE,
    width = 1
  ) +
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()

# Boxplot
# https://r-exercises.com/2016/09/26/replicating-plots-boxplot-exercises    

boxplot(Sepal.Width ~ Species, data=iris)

boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5))

boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n')

boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n', notch=TRUE)

boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n', notch=TRUE, boxwex=0.5, boxcol="blue", medcol="red", medlwd=1, outcol="red", outpch=3, outcex=0.8)
mtext("Comparison of three species in the Fisher iris data", 3, cex=0.9)
mtext("Sepal width in mm", 2, cex=0.9, line=2)

# Advanced Base Graphics
# https://www.r-exercises.com/2016/09/23/advanced-base-graphics-exercises

plot(cars)

plot(cars, lab=c(20,10,6), cex.axis=.6)

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1)
points(x=c(23,26), y=c(60,61), col="red")

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1, xlim=c(4,26))
points(x=c(23,26), y=c(60,61), col="red")
abline(a=-17.5, b=3.93, col="blue", lty=2)

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1, xlim=c(4,26))
points(x=c(23,26), y=c(60,61), col="red")
abline(a=-17.5, b=3.93, col="blue", lty=2)
title(expression(paste("Regression : ",beta[0], "= -17.5, ", beta[1], "= -3.93")))
legend(5,100,c("Old", "New"), col=1:2, pch=1)


par(mfrow=c(1,2))
hist(cars[,1], main="Speed histogram", xlab="Speed")
hist(cars[,2], main="Distance histogram", xlab="Distance")

layout(matrix(c(1,1,2,3), ncol=2))
plot(cars, las=1)
hist(cars[,1], main="Speed histogram", xlab="Speed")
hist(cars[,2], main="Distance histogram", xlab="Distance")

# How to Estimate Model Accuracy with R
# https://machinelearningmastery.com/how-to-estimate-model-accuracy-in-r-using-the-caret-package

# load the libraries
library(caret)
library(klaR)
# load the iris dataset
data(iris)
# define an 80%/20% train/test split of the dataset
split=0.80
trainIndex <- createDataPartition(iris$Species, p=split, list=FALSE)
data_train <- iris[ trainIndex,]
data_test <- iris[-trainIndex,]
# train a naive bayes model
model <- NaiveBayes(Species~., data=data_train)
# make predictions
x_test <- data_test[,1:4]
y_test <- data_test[,5]
predictions <- predict(model, x_test)
# summarize results
confusionMatrix(predictions$class, y_test)

# Bootstrap
# load the library
library(caret)
# load the iris dataset
data(iris)
# define training control
train_control <- trainControl(method="boot", number=100)
# train the model
model <- train(Species~., data=iris, trControl=train_control, method="nb")
# summarize results
print(model)

# k-fold Crrss Validation
# load the library
library(caret)
# load the iris dataset
data(iris)
# define training control
train_control <- trainControl(method="cv", number=10)
# fix the parameters of the algorithm
grid <- expand.grid(.fL=c(0), .usekernel=c(FALSE))
# train the model
model <- train(Species~., data=iris, trControl=train_control, method="nb", tuneGrid=grid)
# summarize results
print(model)

# Repeated k-fold Cross Validation
# load the library
library(caret)
# load the iris dataset
data(iris)
# define training control
train_control <- trainControl(method="repeatedcv", number=10, repeats=3)
# train the model
model <- train(Species~., data=iris, trControl=train_control, method="nb")
# summarize results
print(model)

# Leave One Out Cross Validation (LOOCV)
# load the library
library(caret)
# load the iris dataset
data(iris)
# define training control
train_control <- trainControl(method="LOOCV")
# train the model
model <- train(Species~., data=iris, trControl=train_control, method="nb")
# summarize results
print(model)