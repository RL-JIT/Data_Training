### Visualizations from the Built-In `iris` Dataset

#### 1. Setting Up a New R Studio Project
1. **Navigate to Posit.cloud** in your web browser.
2. **Open a new R Studio project** in Posit Cloud.

#### 2. Loading the Data
1. **Load the `iris` Dataset:**
   - The `iris` dataset is built-in, so you can load it directly:
   ```r
   data(iris)
   ```

2. **View the First Few Rows of the Dataset:**
   ```r
   head(iris)
   ```

3. **Check the Structure of the Dataset:**
   ```r
   str(iris)
   ```

#### 3. Installing and Loading Required Packages
1. **Install and load `ggplot2` for data visualization:**
   ```r
   install.packages("ggplot2")
   library(ggplot2)
   ```

#### 4. Creating Visualizations

1. **Scatter Plot of Sepal Length vs. Sepal Width**
   - **What it shows:** The relationship between sepal length and sepal width, colored by species.
   - **Why use a scatter plot:** Scatter plots are ideal for showing the relationship between two continuous numerical variables.
   - **Code:**
     ```r
     ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
       geom_point() +
       xlab("Sepal Length") +
       ylab("Sepal Width") +
       ggtitle("Scatter Plot of Sepal Length vs. Sepal Width")
     ```

2. **Boxplot of Sepal Length by Species**
   - **What it shows:** The distribution of sepal length for each species.
   - **Why use a boxplot:** Boxplots are useful for comparing distributions and identifying outliers in continuous numerical data across different categories.
   - **Code:**
     ```r
     ggplot(iris, aes(x = Species, y = Sepal.Length)) +
       geom_boxplot() +
       xlab("Species") +
       ylab("Sepal Length") +
       ggtitle("Boxplot of Sepal Length by Species")
     ```

3. **Histogram of Petal Length**
   - **What it shows:** The distribution of petal length across all samples.
   - **Why use a histogram:** Histograms are ideal for displaying the distribution of continuous numerical data.
   - **Code:**
     ```r
     ggplot(iris, aes(x = Petal.Length)) +
       geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
       xlab("Petal Length") +
       ylab("Count") +
       ggtitle("Histogram of Petal Length")
     ```

4. **Density Plot of Petal Length by Species**
   - **What it shows:** The density distribution of petal length for each species.
   - **Why use a density plot:** Density plots are useful for visualizing the distribution of a continuous variable, especially to compare distributions across categories.
   - **Code:**
     ```r
     ggplot(iris, aes(x = Petal.Length, fill = Species)) +
       geom_density(alpha = 0.5) +
       xlab("Petal Length") +
       ylab("Density") +
       ggtitle("Density Plot of Petal Length by Species")
     ```

5. **Pair Plot (Scatterplot Matrix)**
   - **What it shows:** Pairwise scatter plots between all numerical variables, colored by species.
   - **Why use a pair plot:** Pair plots are useful for visualizing relationships between multiple pairs of variables simultaneously.
   - **Code:**
     ```r
     install.packages("GGally")
     library(GGally)
     ggpairs(iris, aes(color = Species))
     ```


### Summary of Visualizations for the `iris` Dataset:
1. **Scatter Plot of Sepal Length vs. Sepal Width**
2. **Boxplot of Sepal Length by Species**
3. **Histogram of Petal Length**
4. **Density Plot of Petal Length by Species**
5. **Pair Plot (Scatterplot Matrix)**