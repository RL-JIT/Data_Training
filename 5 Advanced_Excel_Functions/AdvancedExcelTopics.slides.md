## Advanced Excel Topics

---

## Agenda
    - Macros
    - What-If Analysis
    - Security
    - Switch Function
    - Q&A

---

### Macros

A macro automates repetitive tasks by recording a series of actions performed in Excel. When you run a macro, Excel repeats those actions automatically.

[Quick Start: Create a Macro](https://support.microsoft.com/en-gb/office/quick-start-create-a-macro-741130ca-080d-49f5-9471-1e5fb3d581a8#OfficeVersion=Windows)

### Notes:

Usefulness:

**Time-Saving:** Instead of manually repeating the same steps, you can execute a macro with a single click or keystroke.
**Consistency:** Macros ensure that tasks are performed the same way every time, reducing the risk of human error.
**Efficiency: **They are particularly useful for tasks like formatting data, generating reports, or performing complex calculations that need to be done regularly.

Suppose that every month, you create a report for your accounting manager. You want to format the names of the customers with overdue accounts in red, and also apply bold formatting. You can create and then run a macro that quickly applies these formatting changes to the cells you select.

|||

#### Before you record a macro

Macros and VBA tools can be found on the Developer tab, which is hidden by default, so the first step is to enable it. For more information, see Show the Developer tab.

![](https://support.content.office.net/en-us/media/be1200dc-fdf2-48d0-a8e6-b23a1a885339.png)

|||

#### Record a macro

In the Code group on the Developer tab, click Record Macro.

Optionally, enter a name for the macro in the Macro name box, enter a shortcut key in the Shortcut key box, and a description in the Description box, and then click OK to start recording.

![](https://support.content.office.net/en-us/media/b962324a-f530-4dc2-bd6c-401bc1faaafa.jpg)

|||

Perform the actions you want to automate, such as entering boilerplate text or filling down a column of data.

On the Developer tab, click Stop Recording.

![](https://support.content.office.net/en-us/media/77acc3e5-b5cf-47c4-9110-8d70e3863d7d.jpg)

--- 

#### What-If Analysis

What-If Analysis in Excel allows you to explore different scenarios by changing the values in your formulas to see how those changes affect the outcome.

|||

#### Types of What-If Analysis:

Three kinds of What-If Analysis tools come with Excel: <br>
- **Scenarios**, <br>
- **Goal Seek**, and <br> 
- **Data Tables**.

|||

#### Scenarios
A Scenario is a set of values that Excel saves and can substitute automatically on your worksheet. 



|||

You can create and save different groups of values as scenarios and then switch between these scenarios to view the different results.

![](https://support.content.office.net/en-us/media/2a27fe32-6c58-456f-84ec-2e4e4cf7a096.png)

### Notes:

Suppose that you want to create a budget but are uncertain of your revenue. By using scenarios, you can define different possible values for the revenue and then switch between scenarios to perform what-if analyses.

For example, assume that your worst case budget scenario is Gross Revenue of $50,000 and Costs of Goods Sold of $13,200, leaving $36,800 in Gross Profit. To define this set of values as a scenario, you first enter the values in a worksheet, as shown in the illustration on the screen. 

The Changing cells have values that you type in, while the Result cell contains a formula that is based on the Changing cells (in this illustration cell B4 has the formula =B2-B3).

|||

You then use the Scenario Manager dialog to save these values as a scenario. Go to the Data tab > What-If Analysis > Scenario Manager > Add.

![](https://support.content.office.net/en-us/media/75ba4ea1-5494-47b5-bc8a-23d4e9182588.png)

|||

![](https://support.content.office.net/en-us/media/59ac5a3b-e76f-40c9-bbb6-734e8d708682.png)


### Notes:

In the Scenario name dialog, name the scenario Worst Case, and specify that cells B2 and B3 are the values that change between scenarios. If you select the Changing cells on your worksheet before adding a Scenario, the Scenario Manager will automatically insert the cells for you, otherwise you can type them by hand, or use the cell selection dialog to the right of the Changing cells dialog box.

Note: Although this example contains only two changing cells (B2 and B3), a scenario can contain up to 32 cells.

#### Goal Seek
If you know the result that you want from a formula, but you're not sure what input value the formula requires to get that result, you can use the Goal Seek feature. 
**Purpose:** Determines the necessary input value to achieve a desired result. For example, if you know the total sales you want, Goal Seek can calculate the required number of units sold.

|||

![](https://support.content.office.net/en-us/media/d707e19e-6c32-4b4c-a686-09be752b5826.png)

Cells B1, B2, and B3 are the values for the loan amount, term length, and interest rate.

Cell B4 displays the result of the formula =PMT(B3/12,B2,B1).

### Notes:

For example, suppose that you need to borrow some money. You know how much money you want, how long a period you want in which to pay off the loan, and how much you can afford to pay each month. You can use Goal Seek to determine what interest rate you must secure in order to meet your loan goal.


|||

#### Data Table

Makes it easy to examine a range of possibilities at a glance.

![](https://cdn-5a6cb102f911c811e474f1cd.closte.com/wp-content/uploads/2016/12/Step-002-How-To-Use-Data-Tables-For-What-If-Analysis.png)

Great for sensitivity analysis, such as examining how changes in price or cost affect profitability.

### Notes: 

If you have a formula that uses one or two variables, or multiple formulas that all use one common variable, you can use a Data Table to see all the outcomes in one place. Using Data Tables makes it easy to examine a range of possibilities at a glance. Because you focus on only one or two variables, results are easy to read and share in tabular form. If automatic recalculation is enabled for the workbook, the data in Data Tables immediately recalculates; as a result, you always have fresh data.

|||

![](https://support.content.office.net/en-us/media/9beeebdf-a481-4c6f-af5d-1d2f08c73dc8.png)

Cell B3 contains the input value. 
Cells C3, C4, and C5 are values Excel substitutes based on the value entered in B3.

### Notes:

A Data Table cannot accommodate more than two variables. If you want to analyze more than two variables, you can use Scenarios. Although it is limited to only one or two variables, a Data Table can use as many different variable values as you want. A Scenario can have a maximum of 32 different values, but you can create as many scenarios as you want.

---

#### Security

Worksheet protection secures your worksheet or workbook, preventing unauthorized access or accidental modifications.

|||

### Step 1: Unlock any cells that need to be editable

![](https://support.content.office.net/en-us/media/80b33728-9cb6-4461-a12c-2439db25f8e4.png)

### Notes:

In your Excel file, select the worksheet tab that you want to protect.

Select the cells that others can edit.

Tip: You can select multiple, non-contiguous cells by pressing Ctrl+Left-Click.

Right-click anywhere in the sheet and select Format Cells (or use Ctrl+1, or Command+1 on the Mac), and then go to the Protection tab and clear Locked.

||| 

### Step 2: Protect the worksheet

1. On the Review tab, select Protect Sheet.
   ![](https://support.content.office.net/en-us/media/49d8564a-d3ca-442e-80ed-5e30306277f7.png)

|||

2. In the *Allow all users of this worksheet to* list, select the elements you want people to be able to change.

![](https://support.content.office.net/en-us/media/5fdbe632-dd85-4fc0-b4d1-7ca5c4295db0.png)

|||

Optionally, you can enter a password in the Password to unprotect sheet box and select OK. Reenter the password in the Confirm Password dialog box and select OK.

---

#### Switch Function
In its simplest form, the SWITCH function says:

`=SWITCH(Value to switch, Value to match1...[2-126], Value to return if there's a match1...[2-126], Value to return if there's no match)`

![](https://d13ot9o61jdzpp.cloudfront.net/images/SWITCH_function_example.png)

### Notes:

The SWITCH function evaluates one value against a list of values and returns the result corresponding to the first match. 
You can evaluate up to 126 matching values and results.

|||

#### Another Switch Function Example:

![](https://support.content.office.net/en-us/media/4b6126f8-3a63-4a14-8699-6cf57712511e.png)

### Notes: 

Value to switch? In this case, WEEKDAY(A2) equals 2.

What value do you want to match? In this case, it's 1, 2 and 3.

If there's a match, what do you want to return as a result? In this case, it would be Sunday for 1, Monday for 2 and Tuesday for 3.

Default value to return if there's no match found. In this case, it's the text "No match".

---

## Q & A
