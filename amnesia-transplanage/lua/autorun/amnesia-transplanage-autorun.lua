transplanage = transplanage or {}

if SERVER then
    include("amensia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/network.lua")
    include("amnesia-transplanage/net/server.lua")
    include("amnesia-transplanage/function.lua")

    AddCSLuaFile("amensia-transplanage(configuration/configuration.lua")
    AddCSLuaFile("amnesia-transplanage/net/client.lua")
    AddCSLuaFile("amnesia-transplanage/vgui.lua")

else
    include("amensia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/client.lua")
    include("amnesia-transplanage/vgui.lua")

end

