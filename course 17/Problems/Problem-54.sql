-- Problem 54: Get All Employees managed by 'Mohammed'
-- 13-9-2026
select Employees.*, ManagerName = Managers.Name
from Employees join Employees as Managers
on Employees.ManagerID = Managers.EmployeeID
where Managers.Name = 'Mohammed'
;