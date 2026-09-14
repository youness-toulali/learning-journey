-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make
-- 2026-09-11
-- select count(*) from VehicleDetails where FuelTypeID is not NULL;
select Makes.Make, FuelTypes.FuelTypeName, count(*) as NumberOfVehicles
from VehicleDetails
join Makes
on VehicleDetails.MakeID = Makes.MakeID
join FuelTypes
on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
where VehicleDetails.FuelTypeID is not null
group by FuelTypes.FuelTypeName , Makes.Make
order by Makes.Make
;