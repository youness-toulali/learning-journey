-- Problem 46: Get the highest 3 manufacturers that make the highest number of models
-- 12-9-2026
select top 3 Makes.Make, NumberOfModels = count(*) from Makes
join MakeModels on MakeModels.MakeID = Makes.MakeID
group by Makes.Make
order by NumberOfModels desc
;