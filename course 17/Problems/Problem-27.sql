-- Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'
-- 12-9-2026
select Bodies.BodyName, VehicleDetails.* from VehicleDetails
join Bodies on VehicleDetails.BodyID = Bodies.BodyID
where Bodies.BodyName in('Coupe', 'Hatchback', 'Sedan')
;