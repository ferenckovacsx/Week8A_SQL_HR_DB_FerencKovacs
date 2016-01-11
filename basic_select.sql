-- Write a query to get unique department ID from employee table.
SELECT DISTINCT department_id   
    FROM employees;

-- Write a query to get all employee details from the employee table order by first name, descending.
SELECT *   
    FROM employees   
    ORDER BY first_name DESC; 

-- Write a query to get the total salaries payable to employees.
SELECT SUM(salary)   
     FROM employees;

-- Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary), MIN(salary)   
     FROM employees;

-- Write a query to get the average salary and number of employees in the employees table.    
SELECT AVG(salary), COUNT(*)   
     FROM employees;

-- Write a query to get the number of employees working with the company.
SELECT COUNT(*)   
    FROM employees; 

-- Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT job_id)   
    FROM employees;
    
-- Write a query get all first name from employees table in upper case.
SELECT UPPER(first_name)   
   FROM employees;

-- Write a query to get the first 3 characters of first name from employees table.   
SELECT SUBSTRING(first_name,1,3)   
     FROM employees;

-- Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(first_name,' ', last_name)  
     FROM employees;

-- Write a query to get first name from employees table after removing white spaces from both side.
SELECT TRIM(first_name)   
    FROM employees;

-- Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)  'Length of  Names'   
    FROM employees;
    
-- Write a query to select first 10 records from a table.
SELECT employee_id, first_name   
    FROM employees  LIMIT 10;
