# Installing and Loading Necessary Packages
install.packages("dplyr")
library(dplyr)
# Reading CSV into a dataframe 
titanic_data <- read.csv("Titanic-Dataset.csv")
# Looking at dataframe in spreadsheet view
View(titanic_data)
# run summary stats on dataframe
summary(titanic_data)
# look at structure of dataframe
str(titanic_data)

# Fill missings values for Age with the median
titanic_data <- titanic_data %>% mutate(Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age)) 

# Remove rows with missing Embarked Values
titanic_data <- titanic_data %>%
  filter(Embarked != "")

# Drop the Cabin Column
titanic_data <- titanic_data %>% select(-Cabin)

# Convert relevant columns to appropriate data types
titanic_data <- titanic_data %>% mutate(Survived = as.factor(Survived), Pclass = as.factor(Pclass), Sex = as.factor(Sex), Embarked = as.factor(Embarked)) 

# Looking at the Column Names
names(titanic_data)

# Changing the Column Names to Lowercase
names(titanic_data) <- tolower(names(titanic_data))

# Save my cleaned data to a new file
write.csv(titanic_data, "cleaned_titanic_data.csv", row.names = FALSE)
