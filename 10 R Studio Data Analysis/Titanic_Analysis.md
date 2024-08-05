### 1. Setting Up a new R Studio Project
1. **Navigate to Posit.cloud** in your web browser
2. **Open a new R Studio project** in Posit Cloud

### 2. Loading the Data
1. **Load the Dataset:** Use the `read.csv` function to load the Titanic dataset.
   ```R
   titanic_data <- read.csv("Titanic-Dataset.csv")
   ```

### 3. Data Exploration
1. **View the Data:** Use the `View` function to open the dataset in a spreadsheet-like view.
   ```R
   View(titanic_data)
   ```
2. **Summary Statistics:** Get a summary of the dataset to understand the basic statistics.
   ```R
   summary(titanic_data)
   ```
3. **Structure of Data:** Check the structure to understand the data types and dimensions.
   ```R
   str(titanic_data)
   ```
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
3. **Convert Data Types:** Convert data types if necessary.
   ```R
   # Example: Convert 'Survived' to factor
   titanic_data <- titanic_data %>%
       mutate(Survived = as.factor(Survived))
   ```
### 4. Saving the Cleaned Data
1. **Save the Cleaned Data for Future Use:**
   ```R
   write.csv(titanic_data, "Cleaned_Titanic_Data.csv", row.names = FALSE)
   ```
