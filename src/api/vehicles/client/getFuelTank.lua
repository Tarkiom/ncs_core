---getFuelTank
---@param vehicleId number
---@return number
---@public
function API_Vehicles:getFuelTank(vehicleId)
    if (vehicleId) then
        ---@type number
        local fuel <const> = GetVehicleHandlingFloat(vehicleId, "CHandlingData", "fPetrolTankVolume")
        return (fuel)
    end
    _NCS:trace("Unable to find vehicle", 1)
end