-- Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.
-- 11-9-2026
select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
join Makes
on Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make
order by NumberOfVehicles desc
;