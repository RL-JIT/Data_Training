### Exercise 1: Data Types and Naming Conventions
**Objective:** Practice identifying data types, converting data types, and using proper naming conventions.

#### Steps:
1. **Create a new R script:**
   - Open a new R Studio project in Posit Cloud.
   - Create a new script (`File -> New File -> R Script`).

2. **Define variables of different data types:**
   - Numeric: `age <- 30`
   - Integer: `count <- as.integer(5)`
   - Character: `name <- "Alice"`
   - Factor: `gender <- factor(c("Male", "Female", "Female", "Male"))`
   - Logical: `is_student <- TRUE`
   - Date: `today <- as.Date("2024-08-05")`

3. **Print the variables:**
   ```r
   print(age)
   print(count)
   print(name)
   print(gender)
   print(is_student)
   print(today)
   ```

4. **Check data types:**
   ```r
   print(class(age))
   print(class(count))
   print(class(name))
   print(class(gender))
   print(class(is_student))
   print(class(today))
   ```

5. **Convert data types:**
   - Convert `age` to integer:
     ```r
     age <- as.integer(age)
     print(class(age))
     ```
   - Convert `count` to numeric:
     ```r
     count <- as.numeric(count)
     print(class(count))
     ```
   - Convert `name` to factor:
     ```r
     name <- factor(name)
     print(class(name))
     ```

6. **Correct the variable names to follow naming conventions:**
   - The following variables do not follow naming conventions. Correct them to use clear, descriptive names and consistent naming patterns:
     ```r
     total-Sales <- 10000
     avg-sales <- 500
     CalculateTotal <- function(x) { sum(x) }
     TOTAL_COUNT <- 150
     ```



---

### Exercise 2: Installing and Loading Packages, Summary Statistics
**Objective:** Learn to install and load packages and use them to explore data via summary statistics.

#### Dataset:
- Use the [sample_dataset_with_missing.csv](sandbox:/mnt/data/sample_dataset_with_missing.csv) provided.

#### Steps:
1. **Install and load necessary packages:**
   - Install `dplyr`:
     ```r
     install.packages("dplyr")
     ```
   - Load `dplyr`:
     ```r
     library(dplyr)
     ```

2. **Load the dataset:**
   - Read the dataset into R:
     ```r
     data <- read.csv("path/to/your/sample_dataset_with_missing.csv")
     ```

3. **Explore the dataset:**
   - View the first few rows:
     ```r
     head(data)
     ```
   - Get summary statistics:
     ```r
     summary(data)
     ```
   - Check the structure of the dataset:
     ```r
     str(data)
     ```
4. **Save summary statistics to variables:**
   - Save the mean of Age to a variable:
     ```r
     mean_age <- mean(data$Age, na.rm = TRUE)
     ```
   - Save the median of Height to a variable:
     ```r
     median_height <- median(data$Height, na.rm = TRUE)
     ```
   - Save the count of unique 'Gender' values to a variable:
     ```r
     gender_count <- length(unique(data$Gender))
     ```
5. **Answer questions to demonstrate understanding:**
   - What is the data type of the Name column?
     ```r
     class(data$Name)
     # Write your answer in a comment like this by preceding it with a hashtag.
     ```
   - How many rows and columns are in the dataset?
     ```r
     dim(data)
     # Write your answer in a comment
     ```
   - What are the levels (or categories)of the Gender factor?
     ```r
     levels(data$Gender)
     # Write your answer in a comment
     ```
---

### Exercise 3: Data Cleaning and Transformation
**Objective:** Practice data cleaning and transformation techniques.

#### Dataset:
- Use the [sample_dataset_with_missing.csv](sandbox:/mnt/data/sample_dataset_with_missing.csv) provided.

#### Steps:
1. **Handle missing values:**
   - Check for missing values:
     ```r
     colSums(is.na(data))
     ```
   - Fill missing values with the median:
     ```r
     data <- data %>%
         mutate(Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age),
                Height = ifelse(is.na(Height), median(Height, na.rm = TRUE), Height))
     ```

2. **Convert data types:**
   - Convert `Gender` to a factor:
     ```r
     data <- data %>%
         mutate(Gender = as.factor(Gender))
     ```

3. **Rename variables for consistency:**
   - Rename variables using underscores or camelCase:
     ```r
     data <- data %>%
         rename(name = Name,
                age = Age,
                gender = Gender,
                height = Height,
                weight = Weight,
                score = Score)
     ```

4. **Remove duplicates:**
   - Remove duplicate rows:
     ```r
     data <- data[!duplicated(data), ]
     ```

5. **Handle outliers:**
   - Example: Remove outliers beyond 3 standard deviations for `height`:
     ```r
     data <- data %>%
         filter(height < mean(height) + 3 * sd(height))
     ```

6. **View the cleaned dataset:**
   ```r
   head(data)
   ```

These exercises will help participants practice the basics of R, including data types, naming conventions, package management, summary statistics, and data cleaning. Each exercise includes detailed steps and code snippets for easy follow-along.
