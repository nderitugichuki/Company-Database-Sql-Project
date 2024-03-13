--Retrieve all employees' information.-----------------------------------
SELECT *
FROM employee

--Retrieve all clients' information.------------------------------------
SELECT *
FROM client

--Retrieve the names and salaries of employees who earn more than $50,000 per year.-------------
SELECT first_name,salary
FROM employee
WHERE salary >= 50000

--Retrieve the names and birth dates of all male employees.-----------------
SELECT first_name,birth_day
FROM employee
where sex ="M"

--Retrieve the names and total sales of employees who have made sales to clients.----
SELECT first_name,total_sales,client_name
FROM employee as E
join works_with as W
on E.emp_id= W.emp_id
join client as C
on C.client_id=W.client_id

--Retrieve the names of clients along with the total sales made to them.
SELECT client_name,sum(total_sales) as Total_sales
FROM client as C
join works_with as W
on W.client_id=C.client_id 
GROUP BY client_name
ORDER BY total_sales desc

--Retrieve the names of employees who work with a specific client
SELECT CONCAT(first_name,' ',last_name)
FROM employee as e
JOIN works_with as W
ON W.emp_id=e.emp_id
JOIN client as C
on W.client_id=C.client_id
WHERE C.client_name like ("Times%");

--Retrieve the names of employees along with their managers' names.
SELECT concat(e.first_name,' ',e.last_name) as Employee_name,CONcaT(m.first_name,' ',m.last_name) as Manager_name
FROM employee as e
LEFT JOIN employee as m on e.emp_id=m.super_id

--Retrieve the names of branch managers and the branches they managers
SELECT branch_name,CONCAT(first_name,' ',last_name)
FROM Branch as b
LEFT JOIN employee as e
ON b.mgr_id=e.emp_id

--Retrieve the names of branches and the number of employees working in each branch.
SELECT branch_name,COUNT(emp_id) as Employees_Number
FROM branch as b
JOIN employee as e
on b.branch_id=e.branch_id
GROUP BY branch_name

--Retrieve the names of branch suppliers along with the products they supply to each branch.
SELECT supplier_name,supply_type as Product,branch_name
FROM branch_supplier as bs 
JOIN branch as b
ON bs.branch_id=b.branch_id

--Retrieve the names of employees who are managers.
SELECT CONCAT(first_name,' ',last_name) as name,branch_name
FROM employee as e 
JOIN branch as b
ON b.mgr_id=e.emp_id

--Retrieve the names of clients who haven't made any purchases
SELECT client_name
FROM client AS C
JOIN works_with as W
ON C.client_id=w.client_id
where w.client_id is null

--Retrieve the average salary of employees in each branch.
SELECT ROUND(avg(salary),0) as Avg_salary,branch_name
FROM employee as e    
JOIN branch as b   
on e.branch_id=b.branch_id
GROUP BY branch_name
ORDER BY avg_salary desc

--Retrieve the names of clients along with the total sales made by employees working in their respective branches.---
SELECT client_name,branch_name,total_sales
FROM client as c
JOIN branch as b
ON c.branch_id=b.branch_id
JOIN works_with as w 
ON w.client_id=c.client_id
ORDER BY total_sales desc

--Retrieve the names of employees who have worked with multiple clients.
SELECT CONCAT(first_name,' ',last_name) as name,COUNT(w.client_id) as client
FROM employee as e  
JOIN works_with as w   
ON e.emp_id=w.emp_id
GROUP BY name
HAVING count(w.client_id) > 1

--Retrieve the names of employees who have the same manager.

SELECT e1.first_name AS employee_name, e2.first_name AS manager_name
FROM employee AS e1
JOIN employee AS e2 ON e1.super_id = e2.emp_id
WHERE e1.emp_id != e2.emp_id;

-----Retrieve the names of clients along with the branches they belong to and 
--the total sales made by employees from each branch.-------
SELECT client_name,branch_name,sum(total_sales) as Total_sales
FROM client as c
 JOIN works_with as w  
ON c.client_id=w.client_id
JOIN branch as b  
ON c.branch_id=b.branch_id
GROUP BY client_name,branch_name
ORDER BY total_sales desc

--Retrieve the names of employees who have been with the company for more than 5 years.
SELECT CONCAT(first_name,' ',last_name) as NAME
FROM employee
WHERE DATE_ADD(birth_day, INTERVAL 5 YEAR) <= NOW()
