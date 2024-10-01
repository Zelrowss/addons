--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]

DarkRP.createCategory{
    name = "Nouvel élève",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(150, 75, 0),
    canSee = function(ply) return true end,
    sortOrder = 1,
}

DarkRP.createCategory{
    name = "Membres du personnel",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(150, 75, 0),
    canSee = function(ply) return true end,
    sortOrder = 2,
}

DarkRP.createCategory{
    name = "Serdaigle",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(31,130,204),
    canSee = function(ply) return true end,
    sortOrder = 3,
}

DarkRP.createCategory{
    name = "Serpentard",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(54,124,84),
    canSee = function(ply) return true end,
    sortOrder = 4,
}

DarkRP.createCategory{
    name = "Gryffondor",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(116,0,1),
    canSee = function(ply) return true end,
    sortOrder = 5,
}

DarkRP.createCategory{
    name = "Poufsouffle",
    categorises = "jobs",
    startExpanded = true, 
    color = Color(238,194,12),
    canSee = function(ply) return true end,
    sortOrder = 6,
}



