## Exploring the `airquality` Dataset


### Introduction to the `airquality` Dataset

The `airquality` dataset contains daily air quality measurements in New York from May to September 1973. It includes measurements of ozone, solar radiation, wind, and temperature.

### Steps for Cleaning and Transforming the `airquality` Dataset

#### 1. Setting Up a New R Studio Project
1. **Navigate to Posit.cloud** in your web browser.
2. **Open a new R Studio project** in Posit Cloud.

#### 2. Loading the Data
1. **Load the `airquality` Dataset:**
   - The `airquality` dataset is built-in, so you can load it directly:
   ```r
   data(airquality)
   ```

2. **View the First Few Rows of the Dataset:**
   ```r
   head(airquality)
   ```

3. **Check the Structure of the Dataset:**
   ```r
   str(airquality)
   ```

#### 3. Data Cleaning and Transformation

1. **Handle Missing Values:**
   - First, let's check if there are any missing values in the dataset:
   ```r
   colSums(is.na(airquality))
   ```
   - Fill missing values with the median value of the respective columns:
   ```r
   airquality$Ozone <- ifelse(is.na(airquality$Ozone), median(airquality$Ozone, na.rm = TRUE), airquality$Ozone)
   airquality$Solar.R <- ifelse(is.na(airquality$Solar.R), median(airquality$Solar.R, na.rm = TRUE), airquality$Solar.R)
   ```

2. **Convert Data Types:**
   - Convert the `Month` and `Day` columns to factors:
   ```r
   airquality$Month <- as.factor(airquality$Month)
   airquality$Day <- as.factor(airquality$Day)
   ```

3. **Rename Columns for Consistency:**
   - Rename columns to follow a consistent naming convention, such as using lowercase and underscores:
   ```r
   names(airquality) <- tolower(names(airquality))
   names(airquality) <- gsub("\\.", "_", names(airquality))
   ```

4. **Remove Duplicates:**
   - Check for and remove any duplicate rows:
   ```r
   airquality <- airquality[!duplicated(airquality), ]
   ```

5. **Transform Features:**
   - Create a new feature for the ratio of Ozone to Solar Radiation:
   ```r
   airquality <- airquality %>%
       mutate(ozone_solar_ratio = ozone / solar_r)
   ```

#### 4. Summary of the Cleaned and Transformed Data
1. **Get Summary Statistics:**
   ```r
   summary(airquality)
   ```

2. **View the Structure of the Transformed Data:**
   ```r
   str(airquality)
   ```

#### Detailed Explanations

1. **Loading the Data:**
   - The `airquality` dataset is a built-in dataset in R, which can be loaded directly using the `data(airquality)` function.
   - `head(airquality)` displays the first six rows of the dataset to give a quick overview.
   - `str(airquality)` shows the structure of the dataset, including the data types of each column and a preview of the data.

2. **Handling Missing Values:**
   - `colSums(is.na(airquality))` checks for missing values in each column. It sums up the number of `NA` values per column.
   - If there are missing values, you can fill them using functions like `mean`, `median`, or any other appropriate method. Here, we use `ifelse` to fill missing values in `Ozone` and `Solar.R` with the median of the respective columns.

3. **Converting Data Types:**
   - `airquality$Month <- as.factor(airquality$Month)` ensures the `Month` column is treated as a factor, which is appropriate for categorical data.
   - `airquality$Day <- as.factor(airquality$Day)` ensures the `Day` column is treated as a factor.
   - `str(airquality)` confirms the data types of all columns.

4. **Renaming Columns:**
   - `names(airquality) <- tolower(names(airquality))` converts all column names to lowercase.
   - `gsub("\\.", "_", names(airquality))` replaces any periods in column names with underscores, ensuring consistency.

5. **Removing Duplicates:**
   - `airquality <- airquality[!duplicated(airquality), ]` removes any duplicate rows from the dataset, ensuring each observation is unique.

6. **Transforming Features:**
   - `mutate(ozone_solar_ratio = ozone / solar_r)` creates a new feature, `ozone_solar_ratio`, which is the ratio of Ozone to Solar Radiation. This can provide additional insights during analysis.

7. **Summary Statistics and Structure:**
   - `summary(airquality)` provides summary statistics for each column, such as mean, median, and quartiles for numerical columns, and counts for categorical columns.
   - `str(airquality)` again shows the structure of the transformed dataset, verifying the changes made during cleaning and transformation.

By following these steps, you will have a cleaned and transformed version of the `airquality` dataset, ready for further analysis or modeling.