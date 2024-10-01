local function LoadMaterialsRecursively(dir)
    local materials = {}
    
    local files, folders = file.Find(dir .. "/*", "GAME")
    
    for _, fileName in ipairs(files) do
        if string.GetExtensionFromFilename(fileName) == "vmt" then
            local materialPath = dir .. "/" .. fileName
            local materialName = string.StripExtension(materialPath)
            materials[materialName] = Material(materialName .. ".png")
        end
    end
    
    for _, folder in ipairs(folders) do
        local subMaterials = LoadMaterialsRecursively(dir .. "/" .. folder)
        table.Merge(materials, subMaterials)
    end

    return materials
end

amnesia.materials = LoadMaterialsRecursively("materials/amnesia")
PrintTable(amnesia.materials)