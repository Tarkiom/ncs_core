---repair
---@param vehicleEntity number
---@public
function API_Vehicles:repair(vehicleEntity)
    SetVehicleFixed(vehicleEntity)
    SetVehicleDirtLevel(vehicleEntity, 0.0)
    SetVehicleDeformationFixed(vehicleEntity)
 end
