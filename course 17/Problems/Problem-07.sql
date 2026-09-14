-- Problem 7: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it, then calculate it's percentage
-- 2026-09-11
declare @TotalVehicles float = (select count(*) from VehicleDetails);
select Makes.Make, NumberOfVehicles = count(ModelID),
@TotalVehicles as TotalVehicles,
Perc = (count(*)/ @TotalVehicles)
from VehicleDetails join Makes
on Makes.MakeID = VehicleDetails.MakeID
where VehicleDetails.Year between 1950 and 2000
group by Makes.Make
order by NumberOfVehicles desc
;
