-- Problem 53: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself
-- 13-9-2026
select Employees.*,
case
when Employees.ManagerID is null then Employees.Name
else Managers.Name
end as ManagerName
from Employees
left join Employees as Managers
on Employees.ManagerID = Managers.EmployeeID
;