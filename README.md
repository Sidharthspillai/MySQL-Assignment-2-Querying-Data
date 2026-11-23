# MySQL-Assignment-2-Querying-Data
# MySQL Assignment 2 – Querying Data

## Problem Description

The objective was to query and analyse the employee database using filtering, sorting, aggregate functions, grouping, and joins to retrieve meaningful information from related tables.

## Tools Used

- **MySQL**
- **MySQL Workbench 8.0 CE**

## Work Completed

- Populated the existing **employee** database with **13 departments**, **4 locations**, and **30 employees** using the provided data.
- Retrieved distinct salaries and assigned aliases to the age and salary columns.
- Filtered employees by salary and hire date, and filled the missing designation with **Data Scientist**.
- Sorted employees by department ID and salary, and displayed the first five employees hired in 2018.
- Calculated the total Finance salary, minimum employee age, maximum salary per location, and average salary for designations containing **Analyst**.
- Identified departments with fewer than three employees and locations where the average age of female employees was below 30.
- Used **INNER JOIN**, **LEFT JOIN**, and **RIGHT JOIN** to combine employee, department, and location information.

## SQL Commands and Methods Used

- **DISTINCT:** retrieved unique salary values.
- **AS:** provided temporary names for result columns.
- **WHERE, AND, LIKE, and IS NULL:** filtered records and identified missing values.
- **UPDATE:** filled the missing employee designation.
- **ORDER BY and LIMIT:** sorted results and restricted the number of rows returned.
- **SUM, MIN, MAX, and AVG:** calculated totals, minimums, maximums, and averages.
- **GROUP BY and HAVING:** grouped records and filtered groups using aggregate conditions.
- **COUNT:** calculated employee counts for each department.
- **INNER JOIN:** returned employees with matching departments.
- **LEFT JOIN:** included all departments when counting employees, including those with no employees.
- **RIGHT JOIN:** included all locations when listing assigned employees.
d the minimum employee age was **25**.

Identified **7 departments** with fewer than three employees and **3 locations** where the average age of female employees was below 30.
