transplanage = transplanage or {}

if SERVER then
    include("amnesia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/network.lua")
    include("amnesia-transplanage/net/server.lua")
    include("amnesia-transplanage/function.lua")

    AddCSLuaFile("amnesia-transplanage-configuration/configuration.lua")
    AddCSLuaFile("amnesia-transplanage/net/client.lua")
    AddCSLuaFile("amnesia-transplanage/vgui.lua")

else
    include("amnesia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/client.lua")
    include("amnesia-transplanage/vgui.lua")

end

