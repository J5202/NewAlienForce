local M1Button:ImageButton = script.Parent.Parent:WaitForChild("M1Button")

local M1OneAnimId = "rbxassetid://99719359851694"
local M1TwoAnimId = "rbxassetid://103412070853654"
local M1ThreeAnimId = "rbxassetid://139782183247884"

local inputholders = {combostep = 1, lastclicktime = tick(), lasttime = tick(), punchtimegap = tick()}

M1Button.InputBegan:Connect(function()
    
end)