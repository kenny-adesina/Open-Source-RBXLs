local complete =  game.Workspace:FindFirstChild("LevelComplete")
local playerLevel
local lvl

game.Players.PlayerAdded:Connect(function(plr)
	playerLevel = plr:WaitForChild("playerLevel")
	lvl =  plr:WaitForChild("leaderstats").Level
end)

for _, finish in pairs(complete:GetChildren()) do
	finish.Touched:Connect(function(hit)
		local human = hit.Parent:FindFirstChild("Humanoid")
		local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
		
		local check = false
		if human and plr and check == false then
			check = true
			human.Parent:MoveTo(game.Workspace.Checkpoints:WaitForChild("Level"..(finish:FindFirstChild("LevelTP").Value)).Position)
			playerLevel.Value = finish:FindFirstChild("LevelTP").Value
			lvl.Value = playerLevel.Value
		end
	end)
end
