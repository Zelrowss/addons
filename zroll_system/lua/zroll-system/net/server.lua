net.Receive("zroll_system_send_new_swep", function(_, ply)
    AntiBot(ply)
    local teamValue = -1
    if ply.zroll_system.roll <= 0 then return end
    
    for i, grades in ipairs(zroll_system.cfg.grades) do
        if grades[team.GetName(ply:Team())] then teamValue = i break end
    end

    local swepConfig = zroll_system.cfg.sweps[teamValue]
    if not swepConfig then return end

    -- Calculer le total des probabilités
    local totalRate = 0
    for _, swep in ipairs(swepConfig) do
        totalRate = totalRate + swep.rate
    end

    local randomChoice = math.random(1, totalRate)

    local cumulativeRate = 0
    local selectedSWEP = nil
    for _, swep in ipairs(swepConfig) do
        cumulativeRate = cumulativeRate + swep.rate
        if randomChoice <= cumulativeRate then
            selectedSWEP = swep.class
            break
        end
    end

    if selectedSWEP then
        ply:Give(selectedSWEP)

        ply.zroll_system.roll = ply.zroll_system.roll - 1

        ply.zroll_system = ply.zroll_system or {}
        if teamValue == 1 then
            ply.zroll_system.swep1 = selectedSWEP
        else
            ply.zroll_system.swep2 = selectedSWEP
        end

        net.Start("zroll_system_show_new_swep")
            net.WriteString(selectedSWEP)
        net.Send(ply)
    end

    zroll_system:SaveData(ply)
end)
