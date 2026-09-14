-- Problem 52: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null
-- 13-9-2026
select Employees.*, Managers.Name from Employees
left join Employees as Managers
on Employees.ManagerID = Managers.EmployeeID
;