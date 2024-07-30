# Introduction to Data Analysis Formulas and Functions in Excel

---

## Agenda

1. Sort and Filter
2. Pivot Tables
3. VLOOKUP
4. IF, SUMIFS, COUNTIFS
5. Descriptive Statistics Add-on
6. Q&A Session

---

## Sort and Filter 

- **Sort**: Organize data in ascending or descending order or even do a custom sort, such as by color.
- **Filter**: Display only the rows that meet specific criteria.
![](./assets/SortandFilter_icon.png)

### Notes:

By sorting and filtering you can quickly arrange data to identify trends and patterns and easily focus on specific data subsets.

Some examples of where this would be useful would be sorting sales data by date or amount, filtering customers by region or purchase history, or sorting and filtering products by category or stock levels.

---

## Pivot Tables

 A pivot table is a powerful tool in Excel that allows you to quickly create summary reports without needing to write complex formulas.

![Pivot Table](./assets/PivotTableComparison.png)

With Pivot tables you can easily aggregate data and calculate sums, averages, counts, etc., quickly and dynamically change the layout to view different aspects of your data, and create interactive and user-friendly reports.

Some examples of where you might make use of pivot tables as a data analyst are to summarize sales data by region, product, or salesperson or to analyze financial performance over different periods.

---

## VLOOKUP

Use the VLOOKUP function to search for values in a table or range of values by their row. For example, look up the price of an automotive part by the part number, or find an employee name based on their employee ID. *- Microsoft.com*
![](./assets/vlookup.png)

### Notes:
With VLOOKUP, you can easily retrieve data from large datasets, combine data from multiple sources into one report, and reduce the need for manual data search and entry which can increase the possibility of human error.

People often use VLOOKUP to retrieve customer details based on customer ID, look up product prices based on product code, and fetch employee details from a database.

---

## IF, SUMIFS, COUNTIFS

|||

### IF Function

The IF function allows you to make logical comparisons between a value and what you would expect. It returns one value if a condition is true and another value if it's false.
**Syntax**: `=IF(logical_test, value_if_true, value_if_false)` <br>
   ![](./assets/IFfunction.png)

|||

### SUMIFS Function

The SUMIFS function adds all of its arguments that meet multiple criteria.
**Syntax**: `=SUMIFS(sum_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)` <br>
![](./assets/sumifs.png)

|||

### COUNTIFS Function

The COUNTIFS function counts the number of cells that meet multiple criteria.
**Syntax**: `=COUNTIFS(criteria_range1, criteria1, [criteria_range2, criteria2], ...)`  <br>
![](./assets/countifs.png)


|||

Benefits of These Functions are that you can make decisions based on specific and combined criteria within your data, perform sums and counts based on multiple conditions, and ensure data integrity by counting how many entries meet specified criteria.

Examples of use cases are determining if sales targets are met using the IF function, finding total expenses for specific departments using SUMIFS, and counting the number of purchases from specific regions using COUNTIFS.

---

## Descriptive Statistics and the Analysis ToolPak 


|||

### Review of Descriptive Statistics Measures (and their Formulas)

|||

### Mean 

 The average of a dataset.  
 
 We calculate a mean by taking the sum of all values and dividing by how many values there are.

- **Excel Formula**: `=AVERAGE(range)`
- **Example**: `=AVERAGE(A1:A10)`

|||

### Median 

The middle value in a dataset when ordered from smallest to largest or the average of the two middle values in an even-sized dataset.

- **Excel Formula**: `=MEDIAN(range)`
- **Example**: `=MEDIAN(A1:A10)`

### Notes: 
It doesn't matter if you order the data from smallest to greatest or the other way around, as long as it is ordered then the median is the number in the middle or the number exactly in the centre of the two numbers in the middle.

|||

### Mode

The most frequently occurring value in a dataset.

- **Excel Formula**: `=MODE.SNGL(range)`
- **Example**: `=MODE.SNGL(A1:A10)`

|||

### Variance

Measures how spread out a dataset is.  The median is the average of the *squared* distances from the mean.
- **Excel Formula**: `=VAR.S(range)`
- **Example**: `=VAR.S(A1:A10)`

|||

### Standard Deviation 

The standard deviation is the average distance each of your data points is from the mean value. You find it by taking the square root of the variance. 
- **Excel Formula**: `=STDEV.S(range)`
- **Example**: `=STDEV.S(A1:A10)` 
![](./assets/std.jpg)

### Notes:
When your data is fairly symmetric about the mean and follows other features of what is called the normal distribution then you can expect that most of your data (99.7% of it) will be within 3 standard deviations of the mean, 95% within 1 standard deviation of the mean and 68% within 1 standard deviation of the mean. Anything outside of 3 standard deviations of the mean is likely an outlier therefore and something we should take a closer look at.

|||

### Kurtosis
Kurtosis measures how pointed or flat your data is.
- **Excel Formula**: `=KURT(range)`
- **Example**: `=KURT(A1:A10)` <br>
![](./assets/kurtosis.png)

|||

### Skewness
Skewness is a measure of how symmetrical your data is.  If your data has a tail towards the negative numbers then it is said to have a negative skew and vice versa.
- **Excel Formula**: `=SKEW(range)`
- **Example**: `=SKEW(A1:A10)` <br>
![](./assets/skewness.png)

|||

### Range
The range is the distance from the Max to the Min. 
- **Example**: `=MAX(B2:B11)-MIN(B2:B11)`

|||

### Calculating Descriptive Stats with Analysis Toolpak

Analysis ToolPak is an Excel add-on that provides tools for statistical analysis, including measures of central tendency, dispersion, and frequency distribution.

---

### How to Install the Add-on

1. Go to the `File` tab.
2. Select `Options`.
3. Choose `Add-Ins`.
4. In the `Manage` box, select `Excel Add-ins` and click `Go`.
5. Check the box for `Analysis ToolPak` and click `OK`.

|||

### How to Use the Data Analysis Tools

1. Go to the `Data` tab.
2. In the `Analysis` group, click on `Data Analysis`.
3. Choose the analysis tool you need from the Data Analysis dialog box.

|||

### Example: Using Descriptive Statistics

1. Go to the `Data` tab.
2. In the `Analysis` group, click `Data Analysis`.
3. Select `Descriptive Statistics` and click `OK`.
4. Select a contiguous range of cells as the input data.
5. Choose where you want the analysis results to go.
6. Check `Summary statistics` to include measures like mean, median, mode, standard deviation, etc.
7. Click `OK` to generate the descriptive statistics report.


### Notes:

Calculating descriptive statistics allows us to, for example, analyze sales data to determine average sales, and the variability, and distribution of sales, to assess the consistency and quality of products, or to analyze survey data to understand customer preferences. 

We can calculate the average rating for a product or look at the standard deviation for product ratings to see if the customers are generally consistently satisfied (or unsatisfied).  If kurtosis is high for customer satisfaction ratings then while most customers are neutral, a significant number of them might be extremely satisfied and extremely dissatified (in the tail ends of our data).

---

## Summary

### Key Takeaways

- **Advanced Excel Functions**: Enhance efficiency, improve data analysis, and increase accuracy.
- **Sort and Filter**: Organize and focus on specific data subsets.
- **Pivot Tables**: Summarize and analyze data dynamically.
- **VLOOKUP**: Retrieve and integrate data from multiple sources.
- **IF, SUMIFS, COUNTIFS**: Perform logical tests, conditional sums, and conditional counts.
- **What-If Analysis**: Evaluate different scenarios and achieve goals.
- **Descriptive Statistics Add-on**: Perform advanced statistical analysis.

---

## Q&A 

---

## Formulas, Functions, and Analysis ToolPak Demonstration