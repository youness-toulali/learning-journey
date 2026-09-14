-- Problem 6: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside 
-- 2026-09-11
declare @TotalVehicles int = (select count(*) from VehicleDetails);
select Makes.Make, NumberOfVehicles = count(*), @TotalVehicles as TotalVehicles from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000
group by Makes.Make
;