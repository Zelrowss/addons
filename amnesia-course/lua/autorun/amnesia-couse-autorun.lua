acourse = acourse or {}

if SERVER then
    include("amnesia-course-config/config.lua")
    include("amnesia-course/net/network.lua")
    include("amnesia-course/net/server.lua")
    include("amnesia-course/data.lua")
    include("amnesia-course/function.lua")

    AddCSLuaFile("amnesia-course/net/client.lua")
    AddCSLuaFile("amnesia-course/vgui.lua")
else
    include("amnesia-course/net/client.lua")
    include("amnesia-course/vgui.lua")
end