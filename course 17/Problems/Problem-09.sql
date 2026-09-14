 -- Problem 9: Get all vehicles that runs with GAS
 -- 2026-09-11
 select *, FuelTypeName = 'GAS' from VehicleDetails
 where FuelTypeID = 14
;

-- teacher solution
 select VehicleDetails.*, FuelTypes.FuelTypeName from VehicleDetails
 join FuelTypes
 on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
 where FuelTypes.FuelTypeName = N'GAS'
;