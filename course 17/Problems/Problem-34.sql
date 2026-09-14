-- Problem 34: Get all vehicles that have the minimum Engine_CC
-- 12-9-2026
declare @MinEngineCC int = (select min(Engine_CC) from VehicleDetails);
select * from VehicleDetails
where Engine_CC = @MinEngineCC
;