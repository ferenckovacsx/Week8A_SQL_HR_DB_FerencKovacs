-- Write a query to get the number of employees with the same job.
SELECT job_id, COUNT(*)  
FROM employees  
GROUP BY job_id;

-- Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT manager_id, MIN(salary)  
FROM employees  
WHERE manager_id IS NOT NULL  
GROUP BY manager_id  
ORDER BY MIN(salary) DESC;

-- Write a query to get the department ID and the total salary payable in each department.
SELECT department_id, SUM(salary)  
FROM employees   
GROUP BY department_id;

-- Write a query to get the average salary for each job ID excluding programmer.
SELECT job_id, AVG(salary)   
FROM employees   
WHERE job_id <> 'IT_PROG'   
GROUP BY job_id;

-- Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT job_id, MAX(salary)   
FROM employees   
GROUP BY job_id   
HAVING MAX(salary) >=4000;

-- Write a query to get the average salary for all departments employing more than 10 employees.
SELECT job_id, AVG(salary), COUNT(*)   
FROM employees   
GROUP BY department_id  
HAVING COUNT(*) > 10;
