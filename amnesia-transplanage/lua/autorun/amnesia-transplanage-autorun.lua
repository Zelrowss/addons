amnesia-transplanage = amnesia transplanage or {}

if SERVER then
    include("amensia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/network.lua")
    include("amnesia-transplanage/net/server.lua")
    include("amnesia-transplanage/function.lua")

    AddCSLuaFile("amensia-escape-configuration/configuration.lua")
    AddCSLuaFile("amnesia-escape/net/client.lua")
    AddCSLuaFile("amnesia-escape/vgui.lua")

else
    include("amensia-transplanage-configuration/configuration.lua")
    include("amnesia-transplanage/net/client.lua")
    include("amnesia-transplanage/vgui.lua")

end

