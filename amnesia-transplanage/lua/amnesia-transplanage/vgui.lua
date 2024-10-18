
local background = nil

net.Receive("ATransplanagePanelOpen", function()
    -- if not transplanage.cfg.allowedJobs[team.GetName(ply:Team())] then return end

    background = vgui.Create("ATransplanageTeleportPanel")
end)


local mainPanelBackgroundMat = transplanage.cfg.panelBackgroundMat
local mainPanelFrameTexture = transplanage.cfg.panelFrameTexture
local buttonBackgroundTexture = transplanage.cfg.buttonBackgroundTexture

local PANEL = {}
 
function PANEL:Init()
    self:SetSize(ScrW() * .8, ScrH() * .8)
    self:SetTitle("")
    self:SetDraggable(false)
    self:Center()
    self:ShowDestinationList()
    self:MakePopup()

end

function PANEL:Paint(w, h)

    surface.SetMaterial(mainPanelBackgroundMat)
    surface.SetDrawColor(color_white)
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
        local listItem = vgui.Create("DButton", destinationList)
        //item.name, item.location
        listItem:SetRSize(destinationList:GetWide(), 30)
        listItem:Dock(TOP)
        listItem:RDockMargin(0, 5, 0, 5)
        listItem:SetText(item.name)
        listItem:SetTextColor(color_black)
        function listItem.DoClick()
            net.Start("transplanage_start_teleportation")
                net.WriteVector(item.location)
            net.SendToServer()
            self:Close()
        end
        -- listItem:SetFont(transplanage.cfg.buttonFont)
        

        function listItem:Paint(w, h)
            surface.SetDrawColor(color_white)
            surface.SetMaterial(buttonBackgroundTexture)
            surface.DrawRect(0, 0, w, h)
        end
    end


end
vgui.Register("ATransplanageTeleportPanel", PANEL, "DFrame")