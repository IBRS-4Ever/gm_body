hook.Add("StartCommand", "Dynamic Height + Hull Fix FIX", function()
	hook.Remove("StartCommand", "Dynamic Height + Hull Fix FIX")

	if DynamicCameraUpdateTrueModel then
		local ECPlayerTickRate = 0.5

		hook.Add("PlayerTick", "DynamicCamera:PlayerTick", function(ply)
			if (ply.ECPlayerTickTime or 0) > CurTime() then return end
			ply.ECPlayerTickTime = CurTime() + ECPlayerTickRate
			
			DynamicCameraUpdateTrueModel(ply)
		end)
	end
end)