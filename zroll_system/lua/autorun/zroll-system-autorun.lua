zroll_system = zroll_system or {}

if SERVER then 
    include("zroll-system-configuration/configuration.lua")
    include("zroll-system/utils.lua")
    include("zroll-system/net/network.lua")
    include("zroll-system/net/server.lua")
    include("zroll-system/data.lua")
    include("zroll-system/function.lua")

    AddCSLuaFile("zroll-system-configuration/configuration.lua")
    AddCSLuaFile("zroll-system/utils.lua")
    AddCSLuaFile("zroll-system/vgui.lua")
else
    include("zroll-system-configuration/configuration.lua")
    include("zroll-system/utils.lua")
    include("zroll-system/vgui.lua")
end