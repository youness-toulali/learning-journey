-- Problem 4 : Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending
-- 2026-09-11
select Makes.Make as Make, count(*) as NumberOfVehicles from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
where VehicleDetails.Year between 1950 and 2000
group by Makes.Make
Order by NumberOfVehicles desc
;
