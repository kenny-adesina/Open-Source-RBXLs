game.Players.PlayerAdded:Connect(function(pl)
	
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = pl
	
	local lvl = Instance.new("IntValue")
	lvl.Name = "Level"
	lvl.Parent = leaderstats
	lvl.Value = 1
	
	local stars = Instance.new("IntValue")
	stars.Name = "Stars"
	stars.Parent = leaderstats
	stars.Value = 0
	
end)


local col = game.Workspace:WaitForChild("Stars")

for _, star in pairs(col:GetChildren()) do
	star.Touched:Connect(function(hit)
		local human = hit.Parent:FindFirstChild("Humanoid")
		local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
		local touched = star:FindFirstChild("beenTouched")
		
		if human and plr and touched and touched.Value == false then
			touched.Value = true
			plr.leaderstats.Stars.Value += star:WaitForChild("starWorth").Value
			star:Destroy()
		end
	end)
end
