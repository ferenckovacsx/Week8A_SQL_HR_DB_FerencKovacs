
/*Write a query to display the names (first_name, last_name) and salary for all employees 
whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.*/
SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary NOT BETWEEN 10000 AND 15000   
AND department_id IN (30, 100);

/*Write a query to display the names (first_name, last_name) and
hire date for all employees who were hired in 1987.*/
SELECT first_name, last_name, hire_date   
FROM employees   
WHERE YEAR(hire_date)  LIKE '%1987';

/*Write a query to display the first_name of all employees who have both "b" and "c" in their first name.*/
SELECT first_name  
FROM employees  
WHERE first_name LIKE '%b%'  
AND first_name LIKE '%c%';

/*Write a query to display the last name, job, and salary for all employees whose jobis that of a 
Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.*/
SELECT last_name, job_id, salary  
FROM employees  
WHERE job_id IN ('IT_PROG', 'SH_CLERK')  
AND salary NOT IN (4500,10000, 15000);

/*Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.*/
SELECT *   
FROM employees   
WHERE last_name IN('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');
