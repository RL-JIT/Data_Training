### Visualizations from the Built-In `airquality` Dataset

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

#### 3. Installing and Loading Required Packages
1. **Install and load `ggplot2` for data visualization:**
   ```r
   install.packages("ggplot2")
   library(ggplot2)
   ```

#### 4. Creating Visualizations

1. **Time Series Plot of Ozone**
   - **What it shows:** The variation of ozone levels over time.
   - **Why use a time series plot:** Time series plots are ideal for showing changes in a variable over time.
   - **Code:**
     ```r
     ggplot(airquality, aes(x = 1:nrow(airquality), y = Ozone)) +
       geom_line(color = "blue") +
       xlab("Day") +
       ylab("Ozone") +
       ggtitle("Time Series Plot of Ozone Levels")
     ```

2. **Boxplot of Ozone by Month**
   - **What it shows:** The distribution of ozone levels for each month.
   - **Why use a boxplot:** Boxplots are useful for comparing distributions and identifying outliers in continuous numerical data across different categories.
   - **Code:**
     ```r
     ggplot(airquality, aes(x = as.factor(Month), y = Ozone)) +
       geom_boxplot() +
       xlab("Month") +
       ylab("Ozone") +
       ggtitle("Boxplot of Ozone by Month")
     ```

3. **Histogram of Temperature**
   - **What it shows:** The distribution of temperature across all observations.
   - **Why use a histogram:** Histograms are ideal for displaying the distribution of continuous numerical data.
   - **Code:**
     ```r
     ggplot(airquality, aes(x = Temp)) +
       geom_histogram(binwidth = 1, fill = "red", color = "black") +
       xlab("Temperature") +
       ylab("Count") +
       ggtitle("Histogram of Temperature")
     ```

4. **Scatter Plot of Ozone vs. Wind**
   - **What it shows:** The relationship between ozone levels and wind speed.
   - **Why use a scatter plot:** Scatter plots are ideal for showing the relationship between two continuous numerical variables.
   - **Code:**
     ```r
     ggplot(airquality, aes(x = Wind, y = Ozone)) +
       geom_point(color = "green") +
       xlab("Wind") +
       ylab("Ozone") +
       ggtitle("Scatter Plot of Ozone vs. Wind")
     ```

5. **Facet Grid of Ozone vs. Wind by Month**
   - **What it shows:** The relationship between ozone levels and wind speed, separated by month.
   - **Why use a facet grid:** Facet grids are useful for visualizing relationships between variables across different categories.
   - **Code:**
     ```r
     ggplot(airquality, aes(x = Wind, y = Ozone)) +
       geom_point() +
       facet_wrap(~ Month) +
       xlab("Wind") +
       ylab("Ozone") +
       ggtitle("Ozone vs. Wind by Month")
     ```
