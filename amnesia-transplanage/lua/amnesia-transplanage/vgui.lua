print("test")

local mainPanelBackgroundMat = transplanage.cfg.panelBackgroundMat
local mainPanelFrameTexture = transplanage.cfg.panelFrameTexture
local buttonBackgroundTexture = transplanage.cfg.buttonBackgroundTexture

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

function PANEL:ShowDestinationList()
    local destinationList = vgui.Create("DScrollPanel", self)
    destinationList:SetRSize(self:GetWide()*.5, self:GetTall())
    destinationList:Dock(LEFT)
    destinationList:RDockMargin(10, 10, 10, 10)
    function destinationList:Paint(w, h)
        surface.SetDrawColor(transplanage.cfg.destinationListColor)
        surface.DrawRect(0, 0, w, h)
    end    
    for _, item in ipairs(transplanage.cfg.locations) do
        local listItem = vgui.Create("DButton", self)
        //item.name, item.location
        listItem:SetRSize(self:GetWide(), 30)
        listItem:Dock(TOP)
        listItem:RDockMargin(0, 5, 0, 5)
        listItem:SetText(item.name)
        listItem:SetTextColor(color_white)
        function listItem:DoClick()
            net.Start("transplanage_start_teleportation")
                net.WriteString(item.name)
            net.SendToServer()
            PANEL:Close()
        end
        -- listItem:SetFont(transplanage.cfg.buttonFont)
        

        function listItem:Paint()

        end
    end


end
vgui.Register("ATransplanageTeleportPanel", PANEL, "DFrame")