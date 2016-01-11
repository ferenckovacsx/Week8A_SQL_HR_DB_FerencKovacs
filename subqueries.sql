/*Write a query to find the names (first_name, last_name) and salaries 
of the employees who have higher salary than the employee whose last_name='Bull'*/
SELECT FIRST_NAME, LAST_NAME, SALARY   
FROM employees   
WHERE SALARY >   
(SELECT salary FROM employees WHERE last_name = 'Bull');

-- Find the names (first_name, last_name) of all employees who works in the IT department.
SELECT first_name, last_name   
FROM employees   
WHERE department_id   
IN (SELECT department_id FROM departments WHERE department_name='IT');

-- Find the names (first_name, last_name) of the employees who are managers.
SELECT first_name, last_name   
FROM employees   
WHERE (employee_id IN (SELECT manager_id FROM employees));

-- Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary
SELECT first_name, last_name, salary FROM employees   
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Find the names, salary of the employees whose salary is equal to the minimum salary for their job grade
SELECT first_name, last_name, salary   
FROM employees   
WHERE employees.salary = (SELECT min_salary  
FROM jobs  
WHERE employees.job_id = jobs.job_id);

/*Find the names (first_name, last_name), salary of the employees who 
earn the same salary as the minimum salary for all departments.*/
SELECT * FROM employees   
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Write a query to display the employee ID, first name, last names, and department names of all employees.
SELECT employee_id, first_name, last_name,   
(SELECT department_name   
FROM departments d WHERE e.department_id = d.department_id)   
department FROM employees e ORDER BY department;

-- Write a query to select last 10 records from a table.
SELECT * FROM (  
SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10) sub   
