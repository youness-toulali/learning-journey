-- Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old
-- 12-9-2026
declare @CurrentYear int = Year(GetDate())
select Vehicle_Display_Name, Year, VehicleAge =   @CurrentYear - VehicleDetails.Year
from VehicleDetails
where (@CurrentYear - VehicleDetails.Year) between 15 and 25
;