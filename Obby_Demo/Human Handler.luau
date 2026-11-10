game.Players.PlayerAdded:Connect(function(p)
	local playerLevel = Instance.new("IntValue")
	playerLevel.Name = "playerLevel"
	playerLevel.Parent = p
	playerLevel.Value = 1
end)
