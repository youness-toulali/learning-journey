-- Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'
-- 12-9-2026
select distinct Makes.MakeID, Makes.Make, SubModels.SubModelName from VehicleDetails
join Makes on VehicleDetails.MakeID = Makes.MakeID
join SubModels on SubModels.ModelID = VehicleDetails.SubModelID
where SubModels.SubModelName = N'Elite'
;