-- Problem 31: Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.
-- 12-9-2026
declare @CurrentYear int = Year(GetDate())
select Vehicle_Display_Name, Year, VehicleAge =   @CurrentYear - VehicleDetails.Year
from VehicleDetails
order by VehicleAge desc
;