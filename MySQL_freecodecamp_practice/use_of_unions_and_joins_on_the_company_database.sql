#Unions

#Find a list of employees and branch names
SELECT first_name 
FROM employee
UNION
SELECT branch_name
FROM branch;

#Find a list of all clients and branch suppliers name
SELECT client_name
FROM client
UNION
SELECT supplier_name
FROM branch_supplier;

SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

#Find a list of all money spend or earned by a company
SELECT SUM(total_sales) 
FROM works_with
UNION 
SELECT SUM(salary)
FROM employee;

#Joins
INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

#Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

#LEFT join
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee 
LEFT JOIN branch   # Takes all rows from the employee table (left)
ON employee.emp_id = branch.mgr_id;

#RIGHT join
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee 
RIGHT JOIN branch   # Takes all rows from the branch table (right)
ON employee.emp_id = branch.mgr_id;

# Full outer join is not available in MySQL

