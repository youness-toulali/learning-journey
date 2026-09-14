-- Problem 22: Get percentage of vehicles that has no doors specified
-- 11-9-2026
select  count(*) / cast((select count(*) from VehicleDetails) as float) as VehiclesWithNullDoorsPerc
from VehicleDetails where NumDoors is null
;