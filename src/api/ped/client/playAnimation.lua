---playAnimation
---@param pedId number
---@param dict string
---@param anim string
---@param flag number
---@param blendin number
---@param blendout number
---@param playbackRate number
---@param duration number
---@return void
---@public
function API_Ped:playAnimation(pedId, dict, anim, flag, blendin, blendout, playbackRate, duration)
    if (not (DoesEntityExist(pedId))) then
        return _NCS:die("Target ped does not exists")
    end

    blendin = blendin or 1.0
    blendout = blendout or 1.0
    playbackRate = playbackRate or 1.0
    duration = duration or -1

    RequestAnimDict(dict)
    while (not (HasAnimDictLoaded(dict))) do
        Wait(1)
    end
    TaskPlayAnim(pedId, dict, anim, blendin, blendout, duration, flag, playbackRate, 0, 0, 0)
    RemoveAnimDict(dict)
end