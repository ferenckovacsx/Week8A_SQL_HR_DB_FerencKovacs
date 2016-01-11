
/*Write a query to display the names (first_name, last_name) and salary for all employees 
whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.*/

SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary NOT BETWEEN 10000 AND 15000   
AND department_id IN (30, 100);

SELECT first_name, last_name, hire_date   
FROM employees   
WHERE YEAR(hire_date)  LIKE '%1987';

SELECT first_name  
FROM employees  
WHERE first_name LIKE '%b%'  
AND first_name LIKE '%c%';

SELECT last_name, job_id, salary  
FROM employees  
WHERE job_id IN ('IT_PROG', 'SH_CLERK')  
AND salary NOT IN (4500,10000, 15000);

SELECT *   
FROM employees   
WHERE last_name IN('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');
