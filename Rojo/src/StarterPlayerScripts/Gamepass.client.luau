local SignalEarlyAccessGamepass:BindableFunction = game:GetService("ReplicatedStorage"):WaitForChild("BindableFunctions"):WaitForChild("SignalEarlyAccessGamePass")
--local SetEarlyAccessResetability:RemoteEvent = game.ReplicatedStorage.RemoteEvents.SetEarlyAccessResetability

local MarketplaceService = game:GetService("MarketplaceService")

SignalEarlyAccessGamepass.OnInvoke = function(gamepassid)

    local OwnsGamePass = MarketplaceService:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, gamepassid)
    if OwnsGamePass then
        return true
    else 
        MarketplaceService:PromptGamePassPurchase(game.Players.LocalPlayer, gamepassid)
    end

end