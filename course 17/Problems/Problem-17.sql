-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD
-- 11-9-2026
select count(distinct Makes.Make) as TotalMakesManufacturesFWD from VehicleDetails
join Makes on Makes.MakeID = VehicleDetails.MakeID
join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = N'FWD'
;