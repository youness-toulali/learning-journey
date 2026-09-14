-- Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles
-- 12-9-2026
select min(Engine_CC) as MinEngine_CC, max(Engine_CC) as MaxEngine_CC
, avg(Engine_CC) as AvgEngine_CC
from VehicleDetails
;