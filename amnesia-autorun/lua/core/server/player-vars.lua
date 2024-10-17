hook.Add("PlayerInitialSpawn", "AmnesiaRPInitPlayersVars", function(ply)
    if not IsValid(ply) or not ply:IsPlayer() then return end
    local data = amnesia:LoadPlayerData(ply) or {}

    ply.amnesia = data or {}

end)

hook.Add("PlayerDisconnected", "AmnesiaRPSavePlayersVarsOnDisconnect", function(ply)
    if not IsValid(ply) or not ply:IsPlayer() then return end

    amnesia:SavePlayerData(ply)
end)

hook.Add("ShutDown", "AmnesiaRPSavePlayersVarsOnShutdown", function()
    for _, ply in ipairs(player.GetAll()) do
        amnesia:SavePlayerData(ply)
    end
end)