# Dirty Data
### Turning Garbage into Gold
<!-- .slide: data-background-color="" -->


---

## Learning Objectives
 - To learn why data cleaning is important.
 - To understand what steps are involved in cleaning data.

---

## What is Dirty Data?
**Dirty Data** is data that is incorrect, inconsistent, or incomplete.

Examples:
  - Typos and spelling errors
  - Missing values
  - Duplicate entries
  - Outdated information

---

## Why is Data Cleaning Important? 
*Garbage in, Garbage out!*
<br> 
  <br> Dirty data can lead to:
  - Incorrect conclusions
  - Faulty analyses
  - Poor decision-making
<br> <br> 

|||

## Why is Data Cleaning Important? 
*Garbage in, Garbage out!*

### Clean data enables:
  - Accurate insights
  - Reliable outcomes
  - Informed decisions

---

## Let's Clean that Data!

---

### Step 1: Remove Duplicates
- **Get rid of multiple records.** <br>
<br> **Why**:  Skews analysis, inflates numbers.
<br> <br> **How**:  Identify and delete them.

---

### Step 2: Handle Missing Data
- **Remove or replace cells with no value or null value.** <br>
<br> **Why**:  Can bias your results, e.g. averages.
<br> <br> **How**: 
  - Remove the rows (if few)
  - Fill in with averages or most frequent values
  - Use algorithms to predict missing values

<br> <br>

### Notes:
Note: Missing Data might not affect Sums and Counts but when you go to calculate averages then it will miscount how many values there are to divide by and you will get an inaccurate result.

---

### Step 3: Correct Inaccuracies

- **Remove any incorrect entries.** <br>

  <br> **Why**:  <br> Leads to wrong conclusions.
<br> **How**: 
  - Validate against known data
  - Correct typos and misspellings
  - Cross-check with other sources

---

### Step 4: Standardize Formats
- **Represent data consistently** <br>
<br> **Why**: <br> Ensures uniform analysis and readability.
<br> **How**:  
  - Standardize date formats (e.g., DD/MM/YYYY)
  - Consistent capitalization
  - Uniform units of measurement

---

### Step 5: Filter Outliers
- **Look for Outliers aka extreme data points.** <br>
<br> **Why**: Can skew your analysis.
<br> <br> **How**: 
  - Identify extreme values
  - Investigate and decide to keep or remove them

---

### Step 6: Check Data Types
- **Ensure each column has the appropriate datatype.** <br>
<br> **Why**: <br> Prevents errors and ensures proper analysis.
<br> <br> **How**: 
    - Names should be text/string
  - Dates should be date/datetime
  - Numeric values should be integers or floats

---

### Step 7: Validate Data
- **Ensure data accuracy and quality.** <br>
<br> **Why**: Confirms data integrity and makes sure it conforms to business rules and logic.
<br> <br> **How**: 
  - Run validation rules
  - Check for logic errors
  - Use automated tools for large datasets

### Notes:

e.g. a potential logic error might be a customer who is listed as 15yo but with a title of Mrs. 

---

### Step 8: Shaping & Transforming Data
- **Shaping and transforming** your data for better analysis.
- **Why**: Tailors your data to fit your analysis needs.

|||

#### Changing Rows to Columns
- **Unpivoting**: Transforming rows into columns.
- **Why**: Makes data easier to analyze and visualize.
- **How**: 
  - Use unpivot function to disaggregate data.

<br> <br>
![](./assets/pivotedtounpivoted.jpg)
### Notes:
Show two images depicting pivoted and unpivoted data.


|||

#### Calculating New Columns
- **Creating new columns**: Deriving new data from existing data.
- **Why**: Adds new dimensions to your analysis.
- **How**: 
  - Use formulas and functions
  - Examples: 
    - Calculate age from birthdate
    - Create profit column by subtracting costs from revenue

---


## Summary 

- **Dirty Data** guarantees incorrect data analysis.
<br>
- **Cleaning Data** can be at least 40% of a data analyst's job.
<br> <br> 

### Steps to Clean Data

| Remove duplicates  	|  handle missing data 	|
| correct inaccuracies  	|  standardize formats 	|
| filter outliers  	|  check data types   	|
|  validate data	|  shaping & transforming data


---

## Remember
- Dirty data = inaccurate results
- Take the time to clean your data!
- You'll be rewarded with reliable insights.

---

## Questions?

Let's turn that garbage into gold!
