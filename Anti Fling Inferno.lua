local RunService = game:GetService("RunService")
local players = game:GetService("Players")
local plr = players.LocalPlayer

RunService.Stepped:Connect(function()
	for i, CoPlayer in pairs(players:GetChildren()) do
		if CoPlayer ~= plr and CoPlayer.Character then
			for i,v1 in pairs(CoPlayer.Character:GetChildren()) do
				if v1.ClassName == "MeshPart" or v1.Name == "HumanoidRootPart" then
					v1.CanCollide = false
					v1.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					v1.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					v1.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
				elseif v1:IsA("Accessory") then
					v1.Handle.CanCollide = false
				end
			end
		end
	end
end)
