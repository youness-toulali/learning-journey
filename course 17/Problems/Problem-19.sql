-- Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000
-- 11-9-2026
select Makes.Make, DriveTypes.DriveTypeName, TotalVehicles = count(*)
from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
join DriveTypes on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
group by Make, DriveTypeName
having count(*) > 10000
;