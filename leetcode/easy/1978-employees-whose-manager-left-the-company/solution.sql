# Write your MySQL query statement below
SELECT employee_id
FROM Employees
where salary <30000 and 
manager_id NOT IN 
(select employee_id 
from Employees)
ORDER BY employee_id
