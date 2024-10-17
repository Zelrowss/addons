hook.Add("EntityTakeDamage", "ATransplanageResetPlayerDamageTakenTimer", function(ply, _)

    timer.Create("ATransplanageRecentDamage_" .. ply:SteamID(), transplanage.cfg.damageTimerDelay, 1, function() end)

end)
