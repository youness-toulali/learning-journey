-- Problem 41: Get all Makes that manufactures one of the Max 3 Engine CC
-- 12-9-2026
select distinct Makes.Make, Engine_CC from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
where VehicleDetails.Engine_CC in
(
select Distinct Top 3 Engine_CC from VehicleDetails order by Engine_CC desc
)
;