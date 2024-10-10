sql.Query("CREATE TABLE IF NOT EXISTS amnesia_players_binds (STEAMID TEXT, binds TEXT)")

function amnesia:SavePlayerData(ply)
    local bindsJSON = util.TableToJSON(ply.amnesia.binds)

    local existingData = sql.SQLStr("SELECT * FROM amnesia_players_binds WHERE STEAMID = " .. sql.SQLStr(ply:SteamID()) .. ";")

    if existingData then
        sql.Query("UPDATE amnesia_players_binds SET binds = " .. sql.SQLStr(bindsJSON) .. " WHERE STEAMID = " .. sql.SQLStr(ply:SteamID()) .. ";")
    else
        sql.Query("INSERT INTO amnesia_players_binds (STEAMID, binds) VALUES(" 
        .. sql.SQLStr(ply:SteamID()) .. ", " 
        .. sql.SQLStr(bindsJSON) .. ")")
    end
end

function amnesia:LoadPlayerData(ply)
    local data = sql.Query("SELECT * FROM amnesia_players_binds WHERE STEAMID = " .. sql.SQLStr(ply:SteamID()) .. ";")

    if not data then
        return nil
    else
        data[1].binds = util.JSONToTable(data[1].binds)
        return data[1]
    end
end