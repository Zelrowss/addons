zroll_system.cfg = zroll_system.cfg or {}
local cfg = zroll_system.cfg

cfg.command = "!roll"

cfg.adminGroup = {
    ["superadmin"] = true,
}

cfg.grades = {
    [1] = {
        ["Citizen"] = true,
        ["Nouveau Démon"] = true,
        ["Démon de rang E"] = true,
        ["Démon de rang D"] = true,
        ["Démon de rang C"] = true,
        ["Démon de rang B"] = true,
        ["Démon de rang A"] = true,
        ["Démon de rang A+"] = true,
        ["Démon de rang S"] = true,
        ["Démon de rang S+"] = true,
        ["Démon de rang Z"] = true,
        ["6ème Lune Inférieure"] = true,
        ["5ème Lune Inférieure"] = true,
        ["4ème Lune Inférieure"] = true,
        ["3ème Lune Inférieure"] = true,
        ["2ème Lune Inférieure"] = true,
        ["1ère Lune Inférieure"] = true,
        ["1ère Lune Supérieure"] = true,
        ["2ème Lune Supérieure"] = true,
        ["3ème Lune Supérieure"] = true,
        ["4ème Lune Supérieure"] = true,
        ["5ème Lune Supérieure"] = true,
        ["6ème Lune Supérieure "] = true,
        ["Démon Originel"] = true,
    },
    [2] = {
        ["Aspirant Pourfendeur"] = true,
        ["Mizunoto"] = true,
        ["Mizunoe"] = true,
        ["Kanoto"] = true,
        ["Kanoe"] = true,
        ["Tsuchinoto"] = true,
        ["Tsuchinoe"] = true,
        ["Hinoto"] = true,
        ["Hinoe"] = true,
        ["Kinoto"] = true,
        ["Kinoe"] = true,
        ["Pilier"] = true,
        ["Conseiller Du Maitre"] = true,
        ["Maitre Des Pourfendeurs"] = true,
        
    }
}

cfg.sweps = {
    [1] = {
        {class = "weapon_357", rate = 5},
        {class = "weapon_pistol", rate = 5},
        {class = "weapon_bugbait", rate = 10},
        {class = "weapon_crossbow", rate = 5},
        {class = "weapon_crowbar", rate = 70},
        {class = "weapon_frag", rate = 5},
    },
    [2] = {
        {class = "weapon_357", rate = 5},
        {class = "weapon_pistol", rate = 5},
        {class = "weapon_bugbait", rate = 10},
        {class = "weapon_crossbow", rate = 5},
        {class = "weapon_crowbar", rate = 70},
        {class = "weapon_frag", rate = 5},
    }
}