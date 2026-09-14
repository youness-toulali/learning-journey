-- Problem 25: Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4
-- 12-9-2026
select Makes.Make, VehicleDetails.* from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
where VehicleDetails.Engine like '%OHV%' and VehicleDetails.Engine_Cylinders = 4
;