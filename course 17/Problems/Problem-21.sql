-- Problem 21: Get Total Vehicles that number of doors is not specified
-- 11-9-2026
select count(*) as TotalVehiclesWithNullDoors from VehicleDetails where NumDoors is null;