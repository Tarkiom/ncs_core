---getIdentificationType
---@return string
---@public
function MOD_Config:getIdentificationType()
    return GetConvar("ncs_unique_identifier", _NCSConstant.defaultIdentifier)
end