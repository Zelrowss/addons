hook.Add("PlayerInitialSpawn", "ZRollSystemInitVars", function(ply)

    ply.zroll_system = zroll_system:LoadData(ply) or {
        roll = 0,
        swep1 = "",
        swep2 = "",
    }
end)

hook.Add("PlayerSay", "ZRollSystemStartPanel", function(ply, text)
    AntiBot(ply)
    if text:lower() ~= zroll_system.cfg.command then return end

    local teamValue = -1

    for i, grades in ipairs(zroll_system.cfg.grades) do
        if grades[team.GetName(ply:Team())] then teamValue = i break end
    end

    net.Start("zroll_system_start_panel")
        net.WriteUInt(teamValue, 2)
        net.WriteUInt(ply.zroll_system.roll, 7)
    net.Send(ply)

    return ""
end)

hook.Add("PlayerSpawn", "ZRollSystemGiveWeapons", function(ply)
    AntiBot(ply)

    local teamValue = -1

    for i, grades in ipairs(zroll_system.cfg.grades) do
        if grades[team.GetName(ply:Team())] then teamValue = i break end
    end

    if teamValue == 1 then
        ply:Give(ply.zroll_system.swep1)
    else
        ply:Give(ply.zroll_system.swep2)
    end
end)

hook.Add("PlayerSay", "ZRollSystemCommands", function(ply, text)
    if not IsValid(ply) or not ply:IsPlayer() then return end

    local args = string.Split(text, " ")

    if string.lower(args[1]) == "!addroll" then
        if not zroll_system.cfg.adminGroup[ply:GetUserGroup()] then
            ply:ChatPrint("Vous n'avez pas la permission d'utiliser cette commande.")
            return ""
        end

        if #args < 3 then
            ply:ChatPrint("Usage : !addroll <steamid64 ou steamid32> <montant>")
            return ""
        end

        local targetSteamID = args[2]
        local pointsToAdd = tonumber(args[3])

        if not pointsToAdd or pointsToAdd <= 0 then
            ply:ChatPrint("Veuillez entrer un montant valide.")
            return ""
        end

        local targetPlayer = nil
        for _, v in ipairs(player.GetAll()) do
            if v:SteamID() == targetSteamID or v:SteamID64() == targetSteamID then
                targetPlayer = v
                break
            end
        end

        if not targetPlayer then
            ply:ChatPrint("Joueur non trouvé avec le SteamID donné.")
            return ""
        end

        targetPlayer.zroll_system.roll = (targetPlayer.zroll_system.roll or 0) + pointsToAdd

        zroll_system:SaveData(targetPlayer)

        ply:ChatPrint("Vous avez ajouté " .. pointsToAdd .. " points à " .. targetPlayer:Nick() .. ".")
        targetPlayer:ChatPrint("Vous avez reçu " .. pointsToAdd .. " points de " .. ply:Nick() .. ".")

        return ""
    end
end)