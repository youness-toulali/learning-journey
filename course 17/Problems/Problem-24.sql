-- Problem 24: Get all vehicles that have Engines > 3 Liters and have only 2 doors
-- 12-9-2026
select * from VehicleDetails
where Engine_Liter_Display > 3.0 and NumDoors = 2
;