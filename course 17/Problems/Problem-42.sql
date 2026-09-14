-- Problem 42: Get a table of unique Engine_CC and calculate tax per Engine CC
-- 0 to 1000    Tax = 100
-- 1001 to 2000 Tax = 200
-- 2001 to 4000 Tax = 300
-- 4001 to 6000 Tax = 400
-- 6001 to 8000 Tax = 500
-- Above 8000   Tax = 600
-- Otherwise    Tax = 0
-- 12-9-2026
select distinct Engine_CC,
case
when Engine_CC between 0 and 1000 then 100
when Engine_CC between 1001 and 2000 then 200
when Engine_CC between 2001 and 4000 then 300
when Engine_CC between 4001 and 6000 then 400
when Engine_CC between 6001 and 8000 then 500
when Engine_CC > 8000 then 600
else 0
end as EngineCCTax
from VehicleDetails
order by Engine_CC desc
;