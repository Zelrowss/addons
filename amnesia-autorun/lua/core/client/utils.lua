local mois_francais = {
    "janvier", "février", "mars", "avril", "mai", "juin",
    "juillet", "août", "septembre", "octobre", "novembre", "décembre"
}

function RW(w)
    return ScrW() * w / 1920
end

function RH(h)
    return ScrH() * h / 1080
end

function LoadMaterials(addonName)
    local materials = {}

    local function LoadMaterialFiles(path, storageTable)
        local files, folders = file.Find(path .. "/*", "GAME")
        
        for _, fileName in ipairs(files) do
            if string.EndsWith(fileName, ".png") then
                local matName = string.Replace(fileName, ".png", "")
                storageTable[matName] = Material(path .. "/" .. fileName, "GAME")
            end
        end

        for _, folderName in ipairs(folders) do
            storageTable[folderName] = {}
            LoadMaterialFiles(path .. "/" .. folderName, storageTable[folderName])
        end
    end

    LoadMaterialFiles("materials/" .. addonName, materials)
    
    return materials
end

function RemoveIfValid(panel)
    if IsValid(panel) then panel:Remove() end
end

function GetDate()
    local date_actuelle = os.date("*t")
    local jour = date_actuelle.day
    local mois = mois_francais[date_actuelle.month]
    local annee = date_actuelle.year

    return string.format("%d %s %d", jour, mois, annee)
end

function GetFormatedDate()
    return os.date("%d/%m/%Y")
end

function GetHour()
    local heure = os.date("%H")
    local minute = os.date("%M")
    
    return string.format("%sh%s", heure, minute)
end

function PrintMessage(msg)
    LocalPlayer():ChatPrint(msg)
end