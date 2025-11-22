local DataStoreModule = require(game.ReplicatedStorage.Modules.Utilities.DataStore)

local StyleDataStore = DataStoreModule.NewDataStore("StylesDataStore")

game:GetService("Players").PlayerAdded:Connect(function(player:Player)
    local StylesKey = "Styles"..player.UserId

    local PlayerStyle = StyleDataStore:GetAsync(StylesKey)
    if PlayerStyle then 
        local Style = player:WaitForChild("Style", 120)
        Style.Value = PlayerStyle
    else
        warn("No style data found for player: "..player.Name)
        local Style = player:WaitForChild("Style", 120)
        Style.Value = "HeatBlast" -- Default style
    end
    
end)

game:GetService("Players").PlayerRemoving:Connect(function(player:Player)
    local StylesKey = "Styles"..player.UserId
    local Style = player:FindFirstChild("Style")
    if Style then
        StyleDataStore:SetAsync(StylesKey, Style.Value)
    end
end)
