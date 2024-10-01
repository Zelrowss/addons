local backgroundBlue = Material("zroll-system/backgroundBlue.png")
local backgroundRed = Material("zroll-system/backgroundRed.png")
local blueButton = Material("zroll-system/blueButton.png")
local blueCard = Material("zroll-system/blueCard.png")
local redButton = Material("zroll-system/redButton.png")
local redCard = Material("zroll-system/redCard.png")

local background = nil
local coins = 0
local teamValue = -1

net.Receive("zroll_system_start_panel", function()
    teamValue = net.ReadUInt(2)
    coins = net.ReadUInt(7)

    background = vgui.Create("ZRollSystemMain")
end)

local PANEL = {}
function PANEL:Init()
    self:SetSize(ScrW(), ScrH())
    self:Center()
    self:SetTitle("")
    self:SetDraggable(false)
    self:ShowCloseButton(false)
    self:MakePopup()
    self.item = nil
    self.textX = nil

    self:ShowContent()
end

function PANEL:Paint(w, h)
    if teamValue == 1 then
        surface.SetMaterial(backgroundBlue)
    else
        surface.SetMaterial(backgroundRed)
    end
    surface.SetDrawColor(color_white)
    surface.DrawTexturedRect(0, 0, w, h)

    if teamValue == 1 then
        surface.SetMaterial(blueButton)
    else
        surface.SetMaterial(redButton)
    end
    surface.SetDrawColor(color_white)
    surface.DrawTexturedRect(w * .5 - RW(560 * .5) / 2, h * .8 - RH(140 * .5) / 2, RW(560 * .5), RH(140 * .5))
    draw.SimpleText("Vous avez " .. coins .. " tokens", zroll_system:UseFont(8), w * .5, h * .8, color_white, TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)

    if self.item then
        surface.SetFont(zroll_system:UseFont(10))
        local textWidth, _ = surface.GetTextSize(self.item)
        draw.SimpleText(list.Get("Weapon")[self.item].PrintName, zroll_system:UseFont(10), self.textX + textWidth / 2 + RW(10), h * .25, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
end

function PANEL:ShowContent()
    local closeButton = vgui.Create("DButton", self)
    closeButton:SetRSize(50, 50)
    closeButton:SetRPos(.845, .175)
    closeButton:SetText("X")
    closeButton:SetTextColor(color_white)
    closeButton:SetFont(zroll_system:UseFont(8))
    function closeButton:Paint(w, h)
        surface.SetDrawColor(Color(0, 0, 0, 0))
        surface.DrawRect(0, 0, w, h)
    end
    function closeButton.DoClick()
        self:Close()
    end

    local swepButtons = {}
    local totalWidthButton = 5 * RW(505 * .45) + RH(10) * 4
    local startX = (self:GetWide() - totalWidthButton) / 2
    local margin = RH(10) 
    
    for i = 1, 5 do
        local swepButton = vgui.Create("DButton", self)
        swepButton:SetRSize(501 * .45, 1260 * .45)
        swepButton:SetPos(0, 0)
        swepButton:SetText("")
        swepButton.mat = nil
        function swepButton:Paint(w, h)
            if not self.mat then
                if teamValue == 1 then
                    surface.SetMaterial(blueCard)
                else
                    surface.SetMaterial(redCard)
                end
                surface.SetDrawColor(color_white)
                surface.DrawTexturedRect(0, 0, w, h)
            else
                surface.SetMaterial(self.mat)
                surface.SetDrawColor(color_white)
                surface.DrawTexturedRect(0, 0, w, h)
            end
        end
        function swepButton:DoClick()
            if coins <= 0 then return end
            coins = coins - 1

            net.Start("zroll_system_send_new_swep")
            net.SendToServer()

            net.Receive("zroll_system_show_new_swep", function()
                local selectedSwep = net.ReadString()
        
                local mat = Material("zroll-system/Images/" .. selectedSwep .. ".png")
                self.mat = mat
                background.item = selectedSwep
                background.textX = self:GetX()

                for _, but in ipairs(swepButtons) do
                    but:SetEnabled(false)
                end

                timer.Simple(5, function()
                    for _, but in ipairs(swepButtons) do
                        if not IsValid(background) then return end
                        self.mat = nil
                        background.item = nil
                        background.textX = nil
                        but:SetEnabled(true)
                    end
                end)
            end)
        
            
        end
    
        table.insert(swepButtons, swepButton)
    end
    
    function self:PerformLayout()
        local buttonX = startX
        for _, button in ipairs(swepButtons) do
            button:SetPos(buttonX, self:GetTall() / 2 - RH(1260 * .45) / 2)
            buttonX = buttonX + button:GetWide() + margin
        end
    end

end
vgui.Register("ZRollSystemMain", PANEL, "DFrame")