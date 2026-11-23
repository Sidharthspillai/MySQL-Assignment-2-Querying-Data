 -- MySQL Assignment 2 - Querying Data

USE employee;

-- 1. Distinct Values (DISTINCT):
-- To display salaries without duplicates

SELECT DISTINCT salary
FROM Employees;

-- 2. Alias (AS):
-- To give temporary names to the age and salary columns

SELECT age AS Employee_Age, salary AS Employee_Salary
FROM Employees;

-- 3. WHERE Clause & Operators:
-- a. Employees earning above 50000 and hired before 2016-01-01

SELECT * FROM Employees
WHERE salary > 50000
AND hire_date < '2016-01-01';

-- b. Find and fill the missing designation

SELECT * FROM Employees
WHERE designation IS NULL;

-- To fill the missing designation with Data Scientist

UPDATE Employees
SET designation = 'Data Scientist'
WHERE employee_id = 5004
AND designation IS NULL;

-- To view the updated employee

SELECT * FROM Employees
WHERE employee_id = 5004;

-- Sorting and Grouping Data
-- 1. ORDER BY:
-- To sort department IDs in ascending order and salaries in descending order

SELECT * FROM Employees
ORDER BY department_id ASC, salary DESC;

-- 2. LIMIT:
-- To display the first 5 employees hired in 2018

SELECT * FROM Employees
WHERE YEAR(hire_date) = 2018
ORDER BY hire_date ASC, employee_id ASC
LIMIT 5;

SELECT * FROM Departments
WHERE department_name = 'Finance';

-- 3. Aggregate Functions:
-- a. Total salary in the Finance department

SELECT SUM(salary) AS Total_Finance_Salary
FROM Employees
WHERE department_id = 7;

-- b. Minimum age among all employees

SELECT MIN(age) AS Minimum_Age
FROM Employees;

-- 4. GROUP BY:
-- a. Maximum salary for each location

SELECT location_id, MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY location_id;

-- b. Average salary for each designation containing Analyst

SELECT designation, AVG(salary) AS Average_Salary
FROM Employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

-- 5. HAVING:
-- a. Departments with fewer than 3 employees

SELECT
    Departments.department_id,
    Departments.department_name,
    COUNT(Employees.employee_id) AS Total_Employees
FROM Departments
LEFT JOIN Employees
ON Departments.department_id = Employees.department_id
GROUP BY Departments.department_id, Departments.department_name
HAVING COUNT(Employees.employee_id) < 3;
-- b. Locations where the average age of female employees is below 30

SELECT location_id, AVG(age) AS Average_Female_Age
FROM Employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;

-- Joins
-- 1. INNER JOIN:
-- Employee names, designations and department names

SELECT
    Employees.employee_name,
    Employees.designation,
    Departments.department_name
FROM Employees
INNER JOIN Departments
ON Employees.department_id = Departments.department_id;

-- 2. LEFT JOIN:
-- All departments and their employee counts, including zero

SELECT
    Departments.department_id,
    Departments.department_name,
    COUNT(Employees.employee_id) AS Total_Employees
FROM Departments
LEFT JOIN Employees
ON Departments.department_id = Employees.department_id
GROUP BY Departments.department_id, Departments.department_name;

-- 3. RIGHT JOIN:
-- All locations and the employees assigned to them

SELECT
    Location.location,
    Employees.employee_name
FROM Employees
RIGHT JOIN Location
ON Employees.location_id = Location.location_id;


