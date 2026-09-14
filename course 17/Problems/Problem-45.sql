-- Problem 45: Get Number of Models Per Make
-- 12-9-2026
-- select * from MakeModels;
select Makes.Make, Count(*) as NumberOfModels from MakeModels
join Makes on MakeModels.MakeID = Makes.MakeID
group by Makes.Make
;