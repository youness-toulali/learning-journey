-- Problem 51: Get all employees that have manager along with Manager's name.
-- 13-9-2026
select * from Employees;
select Employees.*, Managers.Name as ManagerName from Employees
join Employees as Managers
on Employees.ManagerID = Managers.EmployeeID
;