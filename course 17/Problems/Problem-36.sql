-- Problem 36: Get all vehicles that have Engin_CC below average
-- 12-9-2026
declare @AvgEngineCC int = (select avg(Engine_CC) from VehicleDetails);
select * from VehicleDetails where Engine_CC < @AvgEngineCC;