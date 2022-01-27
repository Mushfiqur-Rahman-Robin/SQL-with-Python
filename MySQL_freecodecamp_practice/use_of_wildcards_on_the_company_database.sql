#Wildcards

#Find any client who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

#Find any branch supplier who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% labels%';

#Find any employee born in October
SELECT *
FROM employee
WHERE birthday LIKE '____-10%';