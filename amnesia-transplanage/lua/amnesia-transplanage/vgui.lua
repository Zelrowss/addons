print("test")

local mainPanelBackgroundMat = Material("amnesia-transplanage/background.jpg")
local mainPanelFrameTexture = Material("panels/frame.png")

local PANEL = {}

function PANEL:Init()
    self:SetSize(ScrW() * .8, ScrH() * .8)
    self:SetTitle("")
    self:SetDraggable(false)
    self:Center()
    self:MakePopup()

end

function PANEL:Paint()

    surface.SetMaterial(mainPanelBackgroundMat)
    surface.DrawTexturedRect(0, 0, w, h)

    surface.SetMaterial(mainPanelFrameTexture)
    surface.DrawTexturedRect(0, 0, w, h)


end

function PANEL:ShowDestinationList
    local destinationList = vgui.Create("DScrollPanel", self)
    destinationList:SetRSize(self:GetWide()*.5, self:GetTall())
    destinationList:Dock(LEFT)
    destinationList:RDockMargin(10, 10, 10, 10)
    function destinationList:Paint(w, h)
        surface.SetDrawColor(transplanage.cfg.destinationListColor)
        surface.DrawRect(0, 0, w, h)
    end    
    



end
vgui.Register("ATransplanageTeleportPanel", PANEL, "DFrame")