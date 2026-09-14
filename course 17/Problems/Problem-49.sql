-- Problem 49: Get the Lowest Manufacturers manufactured the lowest number of models
-- 12-9-2026
select top 1 with ties Makes.Make, count(*) as TotalModels from Makes
join MakeModels on Makes.MakeID = MakeModels.MakeID
group by Makes.Make
order by TotalModels
;