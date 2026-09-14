-- Problem 44: Get Total Number Of Doors Manufactured by 'Ford'
-- 12-9-2026
select Makes.Make, sum(NumDoors) as TotalNumbersOfDoors from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
where Makes.Make = 'Ford'
group by Makes.Make
;