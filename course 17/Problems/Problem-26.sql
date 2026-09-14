-- Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020
-- 12-9-2026
select VehicleDetails.* from VehicleDetails
join Bodies on VehicleDetails.BodyID = Bodies.BodyID
where Bodies.BodyName = 'Sport Utility' and VehicleDetails.Year > 2020
;