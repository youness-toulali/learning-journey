-- Problem 47: Get the highest number of models manufactured
-- 12-9-2026
select top 1 with ties MakeModels.ModelName, count(*) as TotalModels from VehicleDetails
join MakeModels on VehicleDetails.ModelID = MakeModels.ModelID
group by MakeModels.ModelName
order by TotalModels desc
;