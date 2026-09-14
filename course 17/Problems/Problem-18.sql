-- Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc
-- 11-9-2026
select Makes.Make, DriveTypes.DriveTypeName, count(*) as TotalVehicles
from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
group by Makes.Make, DriveTypes.DriveTypeName
order by Makes.Make, TotalVehicles desc
;