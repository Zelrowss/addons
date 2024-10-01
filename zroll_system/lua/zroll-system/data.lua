sql.Query("CREATE TABLE IF NOT EXISTS zroll_system (STEAMID TEXT, data TEXT)")

function zroll_system:SaveData(ply)
    local existingData = sql.Query("SELECT * FROM zroll_system WHERE STEAMID=" .. sql.SQLStr(ply:SteamID()) .. ";")

    if existingData then
        sql.Query("UPDATE zroll_system SET data = " .. sql.SQLStr(util.TableToJSON(ply.zroll_system)) .. " WHERE STEAMID=" .. sql.SQLStr(ply:SteamID()) .. ";")
    else
        sql.Query("INSERT INTO zroll_system (STEAMID, data) VALUES(" .. sql.SQLStr(ply:SteamID()) .. ", " .. sql.SQLStr(util.TableToJSON(ply.zroll_system)) .. ");")
    end
end

function zroll_system:LoadData(ply)
    local data = sql.Query("SELECT * FROM zroll_system WHERE STEAMID=" .. sql.SQLStr(ply:SteamID()) .. ";")

    if not data or not data[1] then
        return nil
    else
        data[1].data = util.JSONToTable(data[1].data)
    end

    return data[1].data
end
