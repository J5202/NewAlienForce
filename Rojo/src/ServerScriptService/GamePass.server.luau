local MarketplaceService = game:GetService("MarketplaceService")

local SetEarlyAccessResetability:RemoteEvent = game.ReplicatedStorage.RemoteEvents.SetEarlyAccessResetability
--local ResetFromEarlyAccess = game.ReplicatedStorage.BindableEvents.ResetFromEarlyAccess

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, gamePassId, wasPurchased)
    if gamePassId == 1606980144 and wasPurchased then
        -- ResetFromEarlyAccess:Fire(player)
        SetEarlyAccessResetability:FireClient(player)
    end
end)