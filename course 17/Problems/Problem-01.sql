/*
select top 2 * from VehicleDetails;
select * from VehicleMasterDetails;
drop view VehicleMasterDetails;
*/

create view VehicleMasterDetails as(
select ID,
MakeID,
Make = (select Make from Makes where MakeID = VehicleDetails.MakeID),
ModelID,
ModelName = (select ModelName from MakeModels where ModelID = VehicleDetails.ModelID),
SubModelID,
SubModelName = (select SubModelName from SubModels where SubModelID = VehicleDetails.SubModelID),
BodyID,
BodyName = (select BodyName from Bodies where BodyID = VehicleDetails.BodyID),
Vehicle_Display_Name, Year,
DriveTypeID,
DriveTypeName = (select DriveTypeName from DriveTypes where DriveTypeID = VehicleDetails.DriveTypeID),
Engine, Engine_CC, Engine_Cylinders, Engine_Liter_Display,
FuelTypeID,
FuelTypeName = (select FuelTypeName from FuelTypes where FuelTypeID = VehicleDetails.FuelTypeID),
NumDoors
from VehicleDetails
);
