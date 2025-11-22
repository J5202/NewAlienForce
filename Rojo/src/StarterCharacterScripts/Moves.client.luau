local UIS = game:GetService("UserInputService")

local Move1Event:RemoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("Move1")
local Move1Time = 0
local Move1Debounce = false

UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.One then
        Move1Event:FireServer(Move1Time)
        Move1Time = tick()         
    end
end)
