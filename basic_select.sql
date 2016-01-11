SELECT DISTINCT department_id   
    FROM employees;
    
SELECT *   
    FROM employees   
    ORDER BY first_name DESC; 
    
SELECT SUM(salary)   
     FROM employees;
     
SELECT MAX(salary), MIN(salary)   
     FROM employees;
     
SELECT AVG(salary), COUNT(*)   
     FROM employees;
     
SELECT COUNT(*)   
    FROM employees; 
    
SELECT COUNT(DISTINCT job_id)   
    FROM employees;
    
SELECT UPPER(first_name)   
   FROM employees;
   
SELECT SUBSTRING(first_name,1,3)   
     FROM employees;
     
SELECT CONCAT(first_name,' ', last_name)  
     FROM employees;
     
SELECT TRIM(first_name)   
    FROM employees;
    
SELECT employee_id, first_name   
    FROM employees  LIMIT 10;
