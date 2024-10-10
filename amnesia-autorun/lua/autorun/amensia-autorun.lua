amnesia = amnesia or {}

if SERVER then
    include("core/server/player-data.lua")
    include("core/server/player-vars.lua")
    include("core/server/server.lua")
    include("core/shared/shared.lua")
    include("core/shared/colors.lua")

    AddCSLuaFile("core/shared/shared.lua")
    AddCSLuaFile("core/shared/colors.lua")
    AddCSLuaFile("core/client/client.lua")
    AddCSLuaFile("core/client/draw.lua")
    AddCSLuaFile("core/client/panel.lua")
    AddCSLuaFile("core/client/surface.lua")
    AddCSLuaFile("core/client/utils.lua")
    
else
    include("core/shared/shared.lua")
    include("core/shared/colors.lua")
    include("core/client/client.lua")
    include("core/client/draw.lua")
    include("core/client/panel.lua")
    include("core/client/surface.lua")
    include("core/client/utils.lua")
end


