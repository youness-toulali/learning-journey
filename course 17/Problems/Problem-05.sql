-- Problem 5 : Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000 
-- 2026-09-11
select Makes.Make as Make, count(*) as NumberOfVehicles from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
where VehicleDetails.Year between 1950 and 2000
group by Makes.Make
having count(*) > 12000
;
-- without having
select * from(
select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
where VehicleDetails.Year between 1950 and 2000
group by Makes.Make
) as VehiclesManufactured where VehiclesManufactured.NumberOfVehicles > 12000
;
