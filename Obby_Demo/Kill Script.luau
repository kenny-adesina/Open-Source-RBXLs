local killbricks = game.Workspace:WaitForChild("KillBricks")

for _, brick in pairs(killbricks:GetChildren()) do
	brick.Touched:Connect(function(hit)
		local human = hit.Parent:FindFirstChild("Humanoid")
		local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
		local lvl = plr:WaitForChild("playerLevel").Value
		local check = false
		if human and plr and check == false then
			check = true
			if lvl == 1  then
				human.Parent:MoveTo(game.Workspace.Checkpoints:FindFirstChild("SpawnLocation").Position)
			else
				human.Parent:MoveTo((game.Workspace.Checkpoints:FindFirstChild("Level"..lvl)).Position)
			end
			
		end
	end)
end
