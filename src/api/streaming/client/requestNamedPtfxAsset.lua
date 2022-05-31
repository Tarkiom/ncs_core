---requestNamedPtfxAsset
---@param assetName string
---@param callback function
---@public
function API_Streaming:requestNamedPtfxAsset(assetName, callback)
	if not HasNamedPtfxAssetLoaded(assetName) then
		RequestNamedPtfxAsset(assetName)

		while not HasNamedPtfxAssetLoaded(assetName) do
			Wait(0)
		end
	end
	if callback ~= nil then
		callback()
	end
end