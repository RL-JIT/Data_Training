### 1. Setting Up a New R Studio Project
1. **Navigate to Posit.cloud** in your web browser.
2. **Open a new R Studio project** in Posit Cloud.

### 2. Loading the Data
1. **Load the Dataset:** Use the `read.csv` function to load the Titanic dataset.
   ```R
   titanic_data <- read.csv("Titanic-Dataset.csv")
   ```
   **Questions:**
   - What function do you use to load a CSV file into R?
   - What is the variable name you used to store the loaded dataset?

### 3. Data Exploration
1. **View the Data:** Use the `View` function to open the dataset in a spreadsheet-like view.
   ```R
   View(titanic_data)
   ```
   **Questions:**
   - How many rows and columns do you see in the dataset?
   - What are the first few entries in the `Name` column?

2. **Summary Statistics:** Get a summary of the dataset to understand the basic statistics.
   ```R
   summary(titanic_data)
   ```
   **Questions:**
   - What is the average age of the passengers?
   - What is the median fare paid by passengers?
   - How many passengers are missing age information?

3. **Structure of Data:** Check the structure to understand the data types and dimensions.
   ```R
   str(titanic_data)
   ```
   **Questions:**
   - What data types are used for the `Age` and `Fare` columns?
   - How many factor variables are there in the dataset, and which columns are they?

4. **Data Types in R:**
   - **Numeric:** Represents numbers (e.g., `Age`, `Fare`).
   - **Integer:** Represents integer values (whole numbers).
   - **Character:** Represents text or string data (e.g., `Name`).
   - **Factor:** Represents categorical data and can have levels (e.g., `Survived`, `Sex`).
   - **Logical:** Represents TRUE or FALSE values.
   - **Date/Time:** Represents date and time values.

### 4. Data Cleaning
1. **Load `dplyr` Library:** Install and load the `dplyr` library for data manipulation.
   ```R
   install.packages("dplyr")
   library(dplyr)
   ```
   **Questions:**
   - What command is used to install a package in R?
   - How do you load a library in R once it is installed?

2. **Handle Missing Values:** Identify and handle missing values.
   ```R
   # Check for missing values
   colSums(is.na(titanic_data))
   
   # Example: Filling missing Age values with median
   titanic_data <- titanic_data %>%
       mutate(Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age))
   
   # Verify that missing values have been filled
   colSums(is.na(titanic_data))
   ```
   **Questions:**
   - How many missing values are there in the `Age` column before and after filling them?
   - Why might you choose to fill missing values with the median instead of the mean?

3. **Convert Data Types:** Convert data types if necessary.
   ```R
   # Example: Convert 'Survived' to factor
   titanic_data <- titanic_data %>%
       mutate(Survived = as.factor(Survived))
   ```
   **Questions:**
   - What data type is the `Survived` column after conversion?
   - Why is it important to convert certain columns to factor types?

### 5. Saving the Cleaned Data
1. **Save the Cleaned Data for Future Use:**
   ```R
   write.csv(titanic_data, "Cleaned_Titanic_Data.csv", row.names = FALSE)
   ```
   **Questions:**
   - What function is used to save a dataframe to a CSV file?
   - Why is it important to save your cleaned data?

