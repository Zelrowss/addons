amnesia = amnesia or {}

if SERVER then
    include("core/server/player-data.lua")
    include("core/server/player-vars.lua")
    include("core/server/server.lua")
    include("core/shared/shared.lua")
    include("core/shared/colors.lua")
    include("core/shared/materials.lua")

    resource.AddFile("resource/fonts/HybridMedium.ttf")
    resource.AddFile("resource/fonts/OPTIColumna-Solid.otf")

    AddCSLuaFile("core/shared/shared.lua")
    AddCSLuaFile("core/shared/colors.lua")
    AddCSLuaFile("core/shared/materials.lua")
    AddCSLuaFile("core/client/client.lua")
    AddCSLuaFile("core/client/draw.lua")
    AddCSLuaFile("core/client/panel.lua")
    AddCSLuaFile("core/client/surface.lua")
    AddCSLuaFile("core/client/utils.lua")
    AddCSLuaFile("core/client/fonts.lua")
    
else
    include("core/shared/shared.lua")
    include("core/shared/colors.lua")
    include("core/shared/materials.lua")
    include("core/client/client.lua")
    include("core/client/draw.lua")
    include("core/client/panel.lua")
    include("core/client/surface.lua")
    include("core/client/utils.lua")
    include("core/client/fonts.lua")
end


