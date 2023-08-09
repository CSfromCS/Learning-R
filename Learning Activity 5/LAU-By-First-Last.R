# 1 Discrete, Continuous, Nominal, Ordinal, Interval, and Ratio data
discrete_numberOfSiblings <- c(1, 2, 3, 4, 5)
continuous_height <- c(1.1, 2.242, 3.0, 4.55, 5.001)
nominal_countries <- c("Philippines", "Australia", "Japan", "China", "Korea")
ordinal_grades <- c("A", "B", "C", "D", "F")
interval_temperature <- c(-21, -0.5, 12, 28.5, 100)

# 2 Relational databases, SQL and NoSQL databases

# Relational databases are based on the relational model, which organizes data into tables with predefined schema and relationships between tables. They use structured query language (SQL) to manipulate and retrieve data. Each table consists of rows (records) and columns (attributes) that define the data's structure. The relationships between tables are established through keys, primarily primary keys and foreign keys. The relational model ensures data integrity, consistency, and the ability to perform complex queries and transactions. Examples of relational databases include MySQL, PostgreSQL, Oracle Database, and Microsoft SQL Server.

# SQL or Structure Query Language is a domain-specific language used for managing and querying relational databases. It provides commands to create, modify, and query database structures and data. SQL operations include selecting, inserting, updating, and deleting records, as well as creating and modifying tables, indexes, and views. SQL also supports complex operations like joining tables, aggregating data, and performing transactions. SQL databases adhere to the ACID (Atomicity, Consistency, Isolation, Durability) properties, which ensure data integrity and reliability.

# NoSQL or Not Only SQL databases are designed to handle unstructured or semi-structured data and provide more flexible schemas compared to relational databases. NoSQL databases are categorized into various types, each catering to different data models and use cases such as documents.


# 3 SQL and NoSQL Databases

# SQL or relational databases use a structured schema with tables that have predefined columns and data types. They use the concept of rows and columns to store and organize data. SQL databases have a rigid schema, where changes to the schema require careful planning and migration to maintain data consistency. SQL databases use the Structured Query Language (SQL) for querying and manipulating data. SQL offers a standardized way to perform complex queries and transactions. Traditional SQL databases might face challenges when scaling horizontally (adding more servers), as they are optimized for vertical scaling (adding more resources to a single server). SQL databases are optimized for complex queries and transactions. They might suffer in terms of performance when handling massive read and write operations. SQL databases are well-suited for applications that require strong data consistency, complex queries, and structured data, such as financial systems and e-commerce platforms.

# NoSQL databases, like MongoDB, offer more flexibility in terms of data model. They typically use documents (e.g., JSON or BSON format) that can vary in structure within the same collection. NoSQL databases offer dynamic schemas, allowing changes to the structure without affecting existing data. This is particularly useful for rapidly evolving applications. MongoDB uses a query language similar to JSON, making it more intuitive for developers familiar with modern programming languages. However, complex querying capabilities might be more limited compared to SQL. Many NoSQL databases, including MongoDB, are designed with horizontal scalability in mind. They can distribute data across multiple nodes to handle large amounts of data and traffic. NoSQL databases often excel at handling high-speed, read-heavy or write-heavy workloads, making them suitable for applications requiring rapid data access. NoSQL databases are commonly used in scenarios where data is dynamic, rapidly changing, and needs to be stored and retrieved efficiently, such as content management systems, real-time analytics, and IoT applications.

# 4 Supervised, Unsupervised, and Reinforcement Learning

# Supervised learning is a machine learning paradigm where the algorithm learns from labeled training data. In this approach, the algorithm is provided with input-output pairs, where the inputs are features or attributes, and the corresponding outputs are the target values or labels. The goal of supervised learning is to generalize the patterns and relationships present in the training data so that the algorithm can make accurate predictions or classifications on new, unseen data. During training, the algorithm adjusts its internal parameters to minimize the difference between its predictions and the actual target values. Common applications of supervised learning include image classification, spam detection, and regression tasks.

# Unsupervised learning involves training algorithms on data without labeled outputs. Instead of explicit target labels, the algorithm attempts to uncover inherent patterns, structures, or relationships within the data. Clustering and dimensionality reduction are common tasks in unsupervised learning. Clustering algorithms group similar data points together, helping to identify natural groupings in the data. Dimensionality reduction techniques, such as principal component analysis (PCA), aim to reduce the complexity of the data while preserving its essential characteristics. Unsupervised learning is particularly useful when exploring data sets to gain insights or when dealing with data without predefined labels.

# Reinforcement learning is a type of machine learning focused on teaching algorithms how to make decisions by interacting with an environment. The algorithm, called an agent, learns by receiving feedback in the form of rewards or penalties based on the actions it takes. The goal of reinforcement learning is to find the optimal strategy or policy that maximizes the cumulative rewards over time. The agent explores the environment through trial and error, learning from both positive and negative outcomes. Reinforcement learning is well-suited for tasks that involve sequential decision-making and exploration, such as game playing, robotics control, and autonomous systems.

# 5 Real-world applications of machine learning

# An example of supervised learning in a business context is fraud detection in financial transactions. Banks and credit card companies use historical transaction data where each transaction is labeled as either "fraudulent" or "legitimate." By training a supervised learning algorithm on this labeled data, the system learns to recognize patterns associated with fraudulent transactions. When new transactions occur, the system can predict whether a transaction is likely to be fraudulent, helping prevent financial losses and protecting customers.

# Retail companies often use unsupervised learning for customer segmentation. Imagine an e-commerce business with a vast customer base and diverse purchasing behavior. By applying unsupervised clustering algorithms to the purchase history, the company can group customers into segments based on shared characteristics. These segments might reveal different purchasing preferences, allowing the business to tailor marketing campaigns and product recommendations to each group's preferences and needs.

# An example of reinforcement learning in business is optimizing supply chain management. Consider a company that needs to manage inventory levels and shipping decisions across multiple locations. By employing reinforcement learning, the company can model the supply chain as an environment. The agent (algorithm) makes decisions such as when and how much to reorder, balancing the trade-off between minimizing costs and avoiding stockouts. Through interactions with the supply chain, the algorithm learns optimal strategies over time, helping the company streamline operations and reduce costs.


# Data Visualization in R exercises 
# https://oreilly.com/library/view/r-for-data/9781491910382/ch01.html

install.packages("tidyverse", repos = "http://cran.us.r-project.org")
library(tidyverse)
library(ggplot2)

ggplot2::mpg

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
