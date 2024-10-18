hook.Add("EntityTakeDamage", "ATransplanageResetPlayerDamageTakenTimer", function(ply, dmg)
    if dmg:IsFallDamage() then return end
    timer.Create("ATransplanageRecentDamage_" .. ply:SteamID(), transplanage.cfg.damageTimerDelay, 1, function() end)

end)

hook.Add("PlayerSay", "ATransplanagePanelOpenHook", function(ply, text)

    if not IsValid(ply) or not ply:IsPlayer() then return "invalid player" end
    if string.lower(text) ~= transplanage.cfg.openCommand then return "not command" end
    if not transplanage.cfg.allowedJobs[team.GetName(ply:Team())] then return "not group" end

    net.Start("ATransplanagePanelOpen")
    net.Send(ply)

    return ""


end)