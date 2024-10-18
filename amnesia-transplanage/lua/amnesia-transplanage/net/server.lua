net.Receive("transplanage_start_teleportation", function(_, ply)
    if not IsValid(ply) or not ply:IsPlayer() then return "" end
    if timer.Exists("ATransplanageRecentDamage_" .. ply:SteamID()) then ply:ChatPrint("Vous avez subi des dégats trop récemment pour vous téléporter.") return end
    if not transplanage.cfg.allowedJobs[team.GetName(ply:Team())] then return end


    local localization = net.ReadVector()
    ply:SetPos(localization)

end)
