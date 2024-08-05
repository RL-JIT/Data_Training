# Comprehensive Data Analysis in R Studio

### Notes:
In this presentation, we'll cover the essential steps for conducting a comprehensive data analysis in R Studio, including data visualization, model building, and key concepts in machine learning.

---

## Why R?

The syntax of R consists of three items:

- **Variables**, which store data
- **Comments**, used to improve code readability
- **Keywords**, reserved words that have a special meaning for the compiler

### Notes:

R offers a wide variety of statistics-related libraries and provides a favorable environment for statistical computing and design. In addition, the R programming language gets used by many quantitative analysts as a programming tool since it's useful for data importing and cleaning.

R is one of the top programming languages for data professionals, a favorite among data analysts and data scientists. It’s also used as a fundamental tool for finance, which relies heavily on statistical data. 

|||

R is especially useful for...
- **Data analysis**
- **Statistical inference**
- **Machine learning algorithms**

---

## 0. Setting Up R Studio

- Navigate to Posit.cloud and Sign Up for an Account

![](./assets/PositCloud1.png)
https://posit.cloud/plans/free


|||

- Open a new R Studio project

![](./assets/PositCloud2.png)  


|||

- The RStudio Screen
![](./assets/PositCloud_Project.png)  

---

## 1. Install and Load Packages & Libraries

```r
install.packages("dplyr")
install.packages("ggplot2")
install.packages("caTools")
library(dplyr)
library(ggplot2)
library(caTools)
```

### Notes:
Libraries are prewritten code with the functions that we need to work with our data.  Some functions are included in the base package that comes with R and some need to be installed and loaded. These are necessary libraries for data manipulation, visualization, and analysis.

---

## 2. Loading the Data

- Set working directory
- Load the dataset

```r
setwd("path/to/your/directory")
data <- read.csv("your-dataset.csv")
```

### Notes:
Set the working directory to where your dataset is saved and load the dataset using `read.csv`.

---

## 3. Data Exploration

### Summary Statistics

```r
summary(data)
```
||| 

### Structure of Data

```r
str(data)
```

### Notes:
Use `summary()` to get basic statistics and `str()` to understand data types and structure.

---

## Data Types in R

- **Numeric:** Numbers
- **Integer:** Whole numbers
- **Character:** Text
- **Factor:** Categorical data
- **Logical:** TRUE or FALSE
- **Date/Time:** Date and time values

### Notes:
R supports various data types, each suitable for different kinds of data.

---

## 4. Data Cleaning

### Handle Missing Values

```r
colSums(is.na(data))
data <- data %>%
    mutate(variable = ifelse(is.na(variable), median(variable, na.rm = TRUE), variable))
colSums(is.na(data))
```

|||

### Convert Data Types

```r
data <- data %>%
    mutate(variable = as.factor(variable))
```

|||

### Removing Duplicates

```r
data <- data[!duplicated(data), ]
```

|||

### Handling Outliers

```r
# Example: Removing outliers beyond 3 standard deviations
data <- data %>%
    filter(variable < mean(variable, na.rm = TRUE) + 3 * sd(variable, na.rm = TRUE))
```

### Notes:
In addition to handling missing values and converting data types, other important data cleaning steps include removing duplicates and handling outliers.

---

## 5. Data Visualization

### Bar Plot

```r
ggplot(data, aes(x = factor_variable)) +
    geom_bar() +
    ggtitle("Bar Plot Title")
```

### Notes:
- **aes():** Maps variables to visual properties.
- **geom_bar():** Creates bar plots.

---

### Histogram

```r
ggplot(data, aes(x = numeric_variable)) +
    geom_histogram(binwidth = 5) +
    ggtitle("Histogram Title")
```

---

### Boxplot

```r
ggplot(data, aes(x = factor_variable, y = numeric_variable)) +
    geom_boxplot() +
    ggtitle("Boxplot Title")
```

---

### Scatter Plot

```r
ggplot(data, aes(x = numeric_variable1, y = numeric_variable2)) +
    geom_point() +
    ggtitle("Scatter Plot Title")
```

### Notes:
- **Scatter Plot:** Visualizes the relationship between two numeric variables.

---

### Line Plot

```r
ggplot(data, aes(x = time_variable, y = numeric_variable)) +
    geom_line() +
    ggtitle("Line Plot Title")
```

### Notes:
- **Line Plot:** Shows trends over time by connecting data points with a line.

---

### Heatmap

```r
ggplot(data, aes(x = factor_variable1, y = factor_variable2, fill = numeric_variable)) +
    geom_tile() +
    ggtitle("Heatmap Title")
```

### Notes:
- **Heatmap:** Displays the relationship between two categorical variables and a numeric variable, with color intensity representing the numeric values.

## 6. Reporting

- Summarize findings in a report.
- Include key visualizations and tables.

### Notes:
Document your analysis and insights with visuals for better understanding.

---

## 7. Saving the Cleaned Data

```r
write.csv(data, "Cleaned_Data.csv", row.names = FALSE)
```

### Notes:
Save the cleaned dataset for future use or additional analysis.

---

## Resources

https://r4ds.had.co.nz/

R for Data Science: Import, Tidy, Transform, Visualize, and Model Data. Wickham, H. (Author), Grolemund, G. (2017). O’Reilly Media.

Learning R: A Step-by-Step Function Guide to Data Analysis. Cotton, R. (2013). O’Reilly Media.


