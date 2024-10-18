transplanage.cfg = transplanage.cfg or {}
local cfg = transplanage.cfg

cfg.damageTimerDelay = 15

cfg.openCommand = "!transplanage"

cfg.allowedJobs = {
    ["Nouvelle élève"] = true,
}

cfg.locations = {
    {name = "exemple 1", location = Vector(0,0,0)},
    {name = "exemple 2", location = Vector(0,0,0)},
    {name = "exemple 3", location = Vector(0,0,0)},
    {name = "exemple 4", location = Vector(0,0,0)},
    {name = "exemple 5", location = Vector(0,0,0)},
    {name = "exemple 6", location = Vector(0,0,0)},
    {name = "exemple 7", location = Vector(0,0,0)},
    {name = "exemple 8", location = Vector(0,0,0)},
    
}

cfg.panelBackgroundMat = amnesia.mat.backgroundMat
cfg.panelFrameTexture = amnesia.mat.frameMat
cfg.buttonBackgroundTexture = amnesia.mat.buttonMat 