### Steps for Creating Visualizations from the Cleaned Titanic Dataset

#### 1. Setting Up a New R Studio Project
1. **Navigate to Posit.cloud** in your web browser.
2. **Open a new R Studio project** in Posit Cloud.

#### 2. Loading the Data
1. **Upload the Dataset:**
   - In Posit Cloud, go to the "Files" pane and click on "Upload."
   - Upload the `cleaned_titanic_data.csv` file.

2. **Load the Dataset:**
   - Use the `read.csv` function to load the cleaned Titanic dataset.
   ```r
   titanic_data <- read.csv("cleaned_titanic_data.csv")
   ```

#### 3. Installing and Loading Required Packages
1. **Install and load `ggplot2` for data visualization:**
   ```r
   install.packages("ggplot2")
   library(ggplot2)
   ```

#### 4. Creating Visualizations

**Note:** Make sure all column names are in lowercase, as per the cleaned dataset.

1. **Bar Plot of Survived**
   - **What it shows:** A bar plot of the `survived` variable shows the count of passengers who survived and those who did not.
   - **Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = as.factor(survived))) +
       geom_bar() +
       xlab("Survived") +
       ylab("Count") +
       ggtitle("Count of Survived Passengers")
     ```

2. **Histogram of Age**
   - **What it shows:** A histogram of the `age` variable shows the distribution of passengers' ages.
   - **Why use a histogram:** Histograms are ideal for displaying the distribution of continuous numerical data.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = age)) +
       geom_histogram(binwidth = 5, fill = "blue", color = "black") +
       xlab("Age") +
       ylab("Count") +
       ggtitle("Age Distribution of Passengers")
     ```

3. **Boxplot of Age by Survived**
   - **What it shows:** A boxplot of the `age` variable by `survived` status shows the age distribution for passengers who survived versus those who did not.
   - **Why use a boxplot:** Boxplots are useful for comparing distributions and identifying outliers in continuous numerical data across different categories.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = as.factor(survived), y = age)) +
       geom_boxplot() +
       xlab("Survived") +
       ylab("Age") +
       ggtitle("Age Distribution by Survival Status")
     ```

4. **Bar Plot of Passenger Class**
   - **What it shows:** A bar plot of the `pclass` variable shows the count of passengers in each passenger class.
   - **Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = as.factor(pclass))) +
       geom_bar(fill = "green") +
       xlab("Passenger Class") +
       ylab("Count") +
       ggtitle("Count of Passengers by Class")
     ```

5. **Bar Plot of Embarked**
   - **What it shows:** A bar plot of the `embarked` variable shows the count of passengers from each embarkation point (C, Q, S).
   - **Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = embarked)) +
       geom_bar(fill = "purple") +
       xlab("Embarkation Point") +
       ylab("Count") +
       ggtitle("Count of Passengers by Embarkation Point")
     ```

6. **Scatter Plot of Age vs. Fare**
   - **What it shows:** A scatter plot of the `age` variable versus the `fare` variable shows the relationship between passengers' ages and the fares they paid.
   - **Why use a scatter plot:** Scatter plots are ideal for showing the relationship between two continuous numerical variables.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = age, y = fare)) +
       geom_point(color = "red") +
       xlab("Age") +
       ylab("Fare") +
       ggtitle("Scatter Plot of Age vs. Fare")
     ```

7. **Facet Grid of Age vs. Fare by Survived**
   - **What it shows:** A facet grid of the `age` variable versus the `fare` variable by `survived` status shows the relationship between age and fare, separated by survival status.
   - **Why use a facet grid:** Facet grids are useful for visualizing relationships between variables across different categories.
   - **Code:**
     ```r
     ggplot(titanic_data, aes(x = age, y = fare)) +
       geom_point() +
       facet_grid(. ~ survived) +
       xlab("Age") +
       ylab("Fare") +
       ggtitle("Age vs. Fare by Survival Status")
     ```

### Summary of Visualizations:
1. **Bar Plot of Survived:** Shows the count of passengers who survived and did not survive.
2. **Histogram of Age:** Displays the distribution of passengers' ages.
3. **Boxplot of Age by Survived:** Compares the age distribution of passengers who survived and did not survive.
4. **Bar Plot of Passenger Class:** Shows the count of passengers in each class.
5. **Bar Plot of Embarked:** Displays the count of passengers from each embarkation point.
6. **Scatter Plot of Age vs. Fare:** Illustrates the relationship between passengers' ages and the fare they paid.
7. **Facet Grid of Age vs. Fare by Survived:** Visualizes the relationship between age and fare, separated by survival status.
