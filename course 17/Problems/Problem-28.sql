-- Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021
-- 12-9-2026
select Bodies.BodyName, VehicleDetails.* from VehicleDetails
join Bodies on VehicleDetails.BodyID = Bodies.BodyID
where Bodies.BodyName in('Coupe', 'Hatchback', 'Sedan')
and VehicleDetails.Year in(2008, 2020, 2021)
;