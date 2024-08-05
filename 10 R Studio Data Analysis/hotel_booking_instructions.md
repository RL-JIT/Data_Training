## Hotel Cleaning Data Analysis Instructions
Try to do as much as possible from each step before looking at the instructions.

<details>
<summary><b> 1. Setting Up a New R Studio Project</b></summary>
1. **Navigate to Posit.cloud** in your web browser. <br>
2. **Open a new R Studio project** in Posit Cloud.
</details>

<details>
<summary><b> 2. Loading the Data</b></summary>
1. **Upload the Dataset:**
   - In Posit Cloud, go to the "Files" pane and click on "Upload."  <br>
   - Upload the `hotel_bookings.csv` file.

2. **Load the Dataset:**
   - Use the `read.csv` function to load the hotel bookings dataset.
   ```r
   hotel_data <- read.csv("hotel_bookings.csv")
   ```
</details>

<details>
<summary><b>  3. Data Exploration </b></summary>
1. **View the Data:** Use the `View` function to open the dataset in a spreadsheet-like view.
   ```r
   View(hotel_data)
   ```

2. **Summary Statistics:** Get a summary of the dataset to understand the basic statistics.
   ```r
   summary(hotel_data)
   ```

3. **Structure of Data:** Check the structure to understand the data types and dimensions.
   ```r
   str(hotel_data)
   ```

4. **Data Types in R:**
   - **Numeric:** Represents numbers.  <br>
   - **Integer:** Represents integer values (whole numbers).  <br>
   - **Character:** Represents text or string data.  <br>
   - **Factor:** Represents categorical data and can have levels.  <br>
   - **Logical:** Represents TRUE or FALSE values.  <br>
   - **Date/Time:** Represents date and time values.  <br>
</details>

<details>
<summary><b>  Questions for Learners 1</b></summary>
- How many rows and columns are in the dataset?  <br>
- What are the first few entries in the `hotel` column?  <br>
- What is the average lead time for bookings?  <br>
- What is the data type of the `arrival_date_year` column?  <br>
</details>

<details>
<summary><b>  4. Data Cleaning </b></summary>
1. **Load `dplyr` Library:** Install and load the `dplyr` library for data manipulation.
   ```r
   install.packages("dplyr")
   library(dplyr)
   ```

2. **Handle Missing Values:**
   - Check for missing values:
     ```r
     colSums(is.na(hotel_data))
     ```
   - Fill missing values in the `children` column with the median value:
     ```r
     hotel_data <- hotel_data %>%
         mutate(children = ifelse(is.na(children), median(children, na.rm = TRUE), children))
     ```
   - Verify that missing values have been filled:
     ```r
     colSums(is.na(hotel_data))
     ```

3. **Convert Data Types:** Convert data types if necessary.
   - Convert `hotel` to factor:
     ```r
     hotel_data <- hotel_data %>%
         mutate(hotel = as.factor(hotel))
     ```
   - Convert `arrival_date_year` to integer:
     ```r
     hotel_data <- hotel_data %>%
         mutate(arrival_date_year = as.integer(arrival_date_year))
     ```

4. **Remove Duplicates:**
   - Remove duplicate rows:
     ```r
     hotel_data <- hotel_data[!duplicated(hotel_data), ]
     ```

5. **Handle Outliers:** Remove outliers in the `adr` column (average daily rate).
   - Calculate the mean and standard deviation of `adr`:
     ```r
     mean_adr <- mean(hotel_data$adr, na.rm = TRUE)
     sd_adr <- sd(hotel_data$adr, na.rm = TRUE)
     ```
   - Remove outliers beyond 3 standard deviations:
     ```r
     hotel_data <- hotel_data %>%
         filter(adr < mean_adr + 3 * sd_adr)
     ```
</details>

<details>
<summary><b>  Questions for Learners 2</b></summary>
- How many missing values are there in the `children` column before and after filling them?  <br>
- Why might you choose to fill missing values with the median instead of the mean?  <br>
- What data type is the `hotel` column after conversion?  <br>
- What data type is the `arrival_date_year` column after conversion?  <br>
- How many duplicate rows were found and removed?  <br>
- What criteria did you use to remove outliers in the `adr` column?  <br>
</details>

<details>
<summary><b> 5. Saving the Cleaned Data </b></summary>
1. **Save the Cleaned Data for Future Use:** <br>
   ```r
   write.csv(hotel_data, "Cleaned_Hotel_Bookings.csv", row.names = FALSE)
   ```
</details>

<details>
<summary><b> Questions for Learners 3</b></summary>
- What function is used to save a dataframe to a CSV file?  <br>
- Why is it important to save your cleaned data?
</details>
