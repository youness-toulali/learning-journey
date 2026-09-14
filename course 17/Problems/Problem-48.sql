-- Problem 48: Get the highest Manufacturers manufactured the highest number of models
-- 12-9-2026
select top 1 with ties Makes.Make, count(*) as TotalModels from MakeModels
join Makes on MakeModels.MakeID = Makes.MakeID
group by Makes.Make
order by TotalModels desc
;