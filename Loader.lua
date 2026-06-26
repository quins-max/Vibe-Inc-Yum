local games = {
    [79268393072444] = "https://api.jnkie.com/api/v1/luascripts/public/5e2c79396761fd510990d9bdd04dfaf08d0ccb63e623c52af59a11a4a782c910/download", -- Sell Lemons
    [18687417158]    = "https://api.jnkie.com/api/v1/luascripts/public/890b69b64fe24f053a87294b34fbf84864345860fca265234c5d16f9880ff382/download" -- Doors
}

local currentPlaceId = game.PlaceId

if games[currentPlaceId] then
    local success, err = pcall(function()
        loadstring(game:HttpGet(games[currentPlaceId]))()
    end)
    
    if not success then
        warn("Loader Error: Failed to execute script for this game. " .. tostring(err))
    end
else
    warn("Loader Error: Current Game ID (" .. tostring(currentPlaceId) .. ") is not supported by this loader.")
end
