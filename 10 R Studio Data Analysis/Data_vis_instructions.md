### 1. Setting Up a New R Studio Project
1. **Navigate to Posit.cloud** in your web browser.
2. **Open a new R Studio project** in Posit Cloud.

### 2. Loading the Data
1. **Upload the Dataset:**
   - In Posit Cloud, go to the "Files" pane and click on "Upload."
   - Upload the `cleaned_titanic_data.csv` file.

2. **Load the Dataset:**
   - Use the `read.csv` function to load the cleaned Titanic dataset.
   ```r
   titanic_data <- read.csv("cleaned_titanic_data.csv")
   ```

### 3. Installing and Loading Required Packages
1. **Install and load `ggplot2` for data visualization:**
   ```r
   install.packages("ggplot2")
   library(ggplot2)
   ```

### 4. Creating Visualizations

#### Bar Plot of Survived
**What it shows:** A bar plot of the `Survived` variable shows the count of passengers who survived and those who did not. This is useful for visualizing categorical data.

**Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.

**Code:**
```r
ggplot(titanic_data, aes(x = as.factor(Survived))) +
  geom_bar() +
  xlab("Survived") +
  ylab("Count") +
  ggtitle("Count of Survived Passengers")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = as.factor(Survived)))`: Initializes the plot with the Titanic dataset and maps the `Survived` variable to the x-axis. `as.factor` is used to treat `Survived` as a categorical variable.
- `geom_bar()`: Creates a bar plot.
- `xlab("Survived")`: Sets the x-axis label.
- `ylab("Count")`: Sets the y-axis label.
- `ggtitle("Count of Survived Passengers")`: Sets the plot title.

#### Histogram of Age
**What it shows:** A histogram of the `Age` variable shows the distribution of passengers' ages. This helps in understanding the age spread and central tendency.

**Why use a histogram:** Histograms are ideal for displaying the distribution of continuous numerical data.

**Code:**
```r
ggplot(titanic_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  xlab("Age") +
  ylab("Count") +
  ggtitle("Age Distribution of Passengers")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = Age))`: Initializes the plot with the Titanic dataset and maps the `Age` variable to the x-axis.
- `geom_histogram(binwidth = 5, fill = "blue", color = "black")`: Creates a histogram with bins of width 5, blue fill color, and black borders.
- `xlab("Age")`: Sets the x-axis label.
- `ylab("Count")`: Sets the y-axis label.
- `ggtitle("Age Distribution of Passengers")`: Sets the plot title.

#### Boxplot of Age by Survived
**What it shows:** A boxplot of the `Age` variable by `Survived` status shows the age distribution for passengers who survived versus those who did not. It helps in comparing the age spread between the two groups.

**Why use a boxplot:** Boxplots are useful for comparing distributions and identifying outliers in continuous numerical data across different categories.

**Code:**
```r
ggplot(titanic_data, aes(x = as.factor(Survived), y = Age)) +
  geom_boxplot() +
  xlab("Survived") +
  ylab("Age") +
  ggtitle("Age Distribution by Survival Status")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = as.factor(Survived), y = Age))`: Initializes the plot with the Titanic dataset and maps the `Survived` variable to the x-axis and the `Age` variable to the y-axis.
- `geom_boxplot()`: Creates a boxplot.
- `xlab("Survived")`: Sets the x-axis label.
- `ylab("Age")`: Sets the y-axis label.
- `ggtitle("Age Distribution by Survival Status")`: Sets the plot title.

#### Bar Plot of Passenger Class
**What it shows:** A bar plot of the `Pclass` variable shows the count of passengers in each passenger class. This helps in understanding the class distribution of the passengers.

**Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.

**Code:**
```r
ggplot(titanic_data, aes(x = as.factor(Pclass))) +
  geom_bar(fill = "green") +
  xlab("Passenger Class") +
  ylab("Count") +
  ggtitle("Count of Passengers by Class")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = as.factor(Pclass)))`: Initializes the plot with the Titanic dataset and maps the `Pclass` variable to the x-axis.
- `geom_bar(fill = "green")`: Creates a bar plot with green fill color.
- `xlab("Passenger Class")`: Sets the x-axis label.
- `ylab("Count")`: Sets the y-axis label.
- `ggtitle("Count of Passengers by Class")`: Sets the plot title.

#### Bar Plot of Embarked
**What it shows:** A bar plot of the `Embarked` variable shows the count of passengers from each embarkation point (C, Q, S). This helps in understanding the embarkation distribution of the passengers.

**Why use a bar plot:** Bar plots are excellent for displaying and comparing the frequency of categories in categorical data.

**Code:**
```r
ggplot(titanic_data, aes(x = Embarked)) +
  geom_bar(fill = "purple") +
  xlab("Embarkation Point") +
  ylab("Count") +
  ggtitle("Count of Passengers by Embarkation Point")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = Embarked))`: Initializes the plot with the Titanic dataset and maps the `Embarked` variable to the x-axis.
- `geom_bar(fill = "purple")`: Creates a bar plot with purple fill color.
- `xlab("Embarkation Point")`: Sets the x-axis label.
- `ylab("Count")`: Sets the y-axis label.
- `ggtitle("Count of Passengers by Embarkation Point")`: Sets the plot title.

#### Scatter Plot of Age vs. Fare
**What it shows:** A scatter plot of the `Age` variable versus the `Fare` variable shows the relationship between passengers' ages and the fares they paid. This helps in visualizing any potential correlation between age and fare.

**Why use a scatter plot:** Scatter plots are ideal for showing the relationship between two continuous numerical variables.

**Code:**
```r
ggplot(titanic_data, aes(x = Age, y = Fare)) +
  geom_point(color = "red") +
  xlab("Age") +
  ylab("Fare") +
  ggtitle("Scatter Plot of Age vs. Fare")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = Age, y = Fare))`: Initializes the plot with the Titanic dataset and maps the `Age` variable to the x-axis and the `Fare` variable to the y-axis.
- `geom_point(color = "red")`: Creates a scatter plot with red points.
- `xlab("Age")`: Sets the x-axis label.
- `ylab("Fare")`: Sets the y-axis label.
- `ggtitle("Scatter Plot of Age vs. Fare")`: Sets the plot title.

#### Facet Grid of Age vs. Fare by Survived
**What it shows:** A facet grid of the `Age` variable versus the `Fare` variable by `Survived` status shows the relationship between age and fare, separated by survival status. This helps in comparing the relationship between age and fare for passengers who survived and those who did not.

**Why use a facet grid:** Facet grids are useful for visualizing relationships between variables across different categories.

**Code:**
```r
ggplot(titanic_data, aes(x = Age, y = Fare)) +
  geom_point() +
  facet_grid(. ~ Survived) +
  xlab("Age") +
  ylab("Fare") +
  ggtitle("Age vs. Fare by Survival Status")
```

**Explanation:**
- `ggplot(titanic_data, aes(x = Age, y = Fare))`: Initializes the plot with the Titanic dataset and maps the `Age` variable to the x-axis and the `Fare` variable to the y-axis.
- `geom_point()`: Creates a scatter plot.
- `facet_grid(. ~ Survived)`: Creates separate panels for each survival status.
- `xlab("Age")`: Sets the x-axis label.
- `ylab("Fare")`: Sets the y-axis label.
- `ggtitle("Age vs. Fare by Survival Status")`: Sets the plot title.
