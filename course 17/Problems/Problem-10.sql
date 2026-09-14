-- Problem 10: Get all Makes that runs with GAS
-- 11-9-2026
select distinct Makes.Make, FuelTypes.FuelTypeName from VehicleDetails
join Makes
on Makes.MakeID = VehicleDetails.MakeID
join FuelTypes
on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
where FuelTypes.FuelTypeName = N'GAS'
;