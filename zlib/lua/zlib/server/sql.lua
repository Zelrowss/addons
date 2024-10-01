function sql.SavePlayerData(dbname, ply, data)
    if not sql.TableExists(dbname) then
        sql.Query("CREATE TABLE" .. dbname .. "(steamid TEXT NOT NULL PRIMARY KEY, data TEXT NOT NULL);")
    end

    if not IsValid(ply) or not ply:IsPlayer() then
        print("Le joueur n'est pas valide.")
        return false
    end

    local jsonData = util.TableToJSON(data)
    local steamid = ply:SteamID()

    local escapedSteamID = sql.SQLStr(steamid)
    local escapedData = sql.SQLStr(jsonData)

    local query = "SELECT steamid FROM " .. dbname .. " WHERE steamid = " .. escapedSteamID .. ";"
    local result = sql.Query(query)

    if result then
        query = "UPDATE " .. dbname .. " SET data = " .. escapedData .. " WHERE steamid = " .. escapedSteamID .. ";"
    else
        query = "INSERT INTO " .. dbname .. " (steamid, data) VALUES (" .. escapedSteamID .. ", " .. escapedData .. ");"
    end

    sql.Begin()
    sql.Query(query)
    sql.Commit()

    return true
end

function sql.LoadPlayerData(dbname, ply)
    if not IsValid(ply) or not ply:IsPlayer() then
        print("Le joueur n'est pas valide.")
        return nil
    end

    local steamid = ply:SteamID()
    local escapedSteamID = sql.SQLStr(steamid)

    local query = "SELECT data FROM " .. dbname .. " WHERE steamid = " .. escapedSteamID .. ";"
    local result = sql.Query(query)

    if result and result[1] then
        local data = result[1].data
        return util.JSONToTable(data)
    else
        print("Aucune donnée trouvée pour ce joueur.")
        return nil
    end
end

function sql.SaveGlobalData(dbname, data)
    if not sql.TableExists(dbname) then
        sql.Query("CREATE TABLE" .. dbname .. "(data TEXT NOT NULL);")
    end

    local jsonData = util.TableToJSON(data)
    local escapedData = sql.SQLStr(data)

    sql.Query("REPLACE INTO " .. dbname .. "(data) VALUES(" .. escapedData .. ");")
end

function sql.LoadGlobalData(dbname)
    local data = sql.Query("SELECT * FROM " .. dbname)

    if data then
        data[1] = util.JSONToTable(data[1])
        return data[1]
    else
        print("Aucune donnée trouvée.")
        return nil
    end
end