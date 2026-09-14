-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD
-- 11-9-2026
select distinct Makes.Make from VehicleDetails
join DriveTypes
on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
join Makes
on Makes.MakeID = VehicleDetails.MakeID
where DriveTypes.DriveTypeName = N'FWD'
;