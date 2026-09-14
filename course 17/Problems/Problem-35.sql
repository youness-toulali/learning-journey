-- Problem 35: Get all vehicles that have the Maximum Engine_CC
-- 12-9-2026
declare @MaxEngineCC int = (select max(Engine_CC) from VehicleDetails)
select * from VehicleDetails where Engine_CC = @MaxEngineCC;