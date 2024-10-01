zlib = zlib or {}

local clientFiles, _ = file.Find("zlib/client/*", "LUA")
local serverFiles, _ = file.Find("zlib/server/*", "LUA")
local sharedFiles, _ = file.Find("zlib/shared/*", "LUA")
local vguiFiles, _ = file.Find("zlib/client/vgui/*", "LUA")

if SERVER then 
    for _, fileName in ipairs(clientFiles) do
        local filePath = "zlib/client/" .. fileName
        AddCSLuaFile(filePath)
    end

    for _, fileName in ipairs(serverFiles) do
        local filePath = "zlib/server/" .. fileName
        include(filePath)
        AddCSLuaFile(filePath)
    end
    
    for _, fileName in ipairs(sharedFiles) do
        local filePath = "zlib/shared/" .. fileName
        include(filePath)
        AddCSLuaFile(filePath)
    end

    for _, fileName in ipairs(vguiFiles) do
        local filePath = "zlib/client/vgui/" .. fileName
        AddCSLuaFile(filePath)
    end
else
    for _, fileName in ipairs(clientFiles) do
        local filePath = "zlib/client/" .. fileName
        include(filePath)
    end

    for _, fileName in ipairs(sharedFiles) do
        local filePath = "zlib/shared/" .. fileName
        include(filePath)
    end

    for _, fileName in ipairs(vguiFiles) do
        local filePath = "zlib/client/vgui/" .. fileName
        include(filePath)
    end
end
