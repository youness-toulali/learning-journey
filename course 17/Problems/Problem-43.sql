-- Problem 43: Get Make and Total Number Of Doors Manufactured Per Make
-- 12-9-2026
select Makes.Make, sum(NumDoors) as TotalNumDoors from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
group by Makes.Make
;