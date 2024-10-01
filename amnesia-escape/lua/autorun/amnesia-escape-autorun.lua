amnesia_escape = amnesia_escape or {}

if SERVER then
    include("amensia-escape-configuration/configuration.lua")
    include("amnesia-escape/net/network.lua")
    include("amnesia-escape/net/server.lua")
    include("amnesia-escape/function.lua")
    
    AddCSLuaFile("amensia-escape-configuration/configuration.lua")
    AddCSLuaFile("amnesia-escape/net/client.lua")
    AddCSLuaFile("amnesia-escape/vgui.lua")
else
    include("amensia-escape-configuration/configuration.lua")
    include("amnesia-escape/net/client.lua")
    include("amnesia-escape/vgui.lua")
end