-- Problem 11: Get Total Makes that runs with GAS
-- 11-9-2026
select count(*) as TotalMakesRunsOnGas from
(
select distinct Makes.Make from VehicleDetails
join FuelTypes
on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
join Makes
on Makes.MakeID = VehicleDetails.MakeID
where FuelTypes.FuelTypeName = N'GAS'
) as R1
;