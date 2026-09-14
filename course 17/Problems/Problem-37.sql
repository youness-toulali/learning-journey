-- Problem 37: Get total vehicles that have Engin_CC above average
-- 12-9-2026
declare @AvgEngineCC int;
select @AvgEngineCC = (select avg(Engine_CC) from VehicleDetails);
select TotalVehicles = count(*) from VehicleDetails
where Engine_CC > @AvgEngineCC;