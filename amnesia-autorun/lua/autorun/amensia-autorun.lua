amnesia = amnesia or {}

if SERVER then
    include("core/server.lua")
    include("core/shared.lua")

    AddCSLuaFile("core/shared.lua")
    AddCSLuaFile("core/client.lua")

else
    include("core/shared.lua")
    include("core/client.lua")
end


