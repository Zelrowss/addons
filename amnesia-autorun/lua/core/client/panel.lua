local fontTable = {}

local PANEL = FindMetaTable("Panel")

function PANEL:SetRSize(w, h)
    local rW = w / 1920
    local rH = h /1080
    self:SetSize(ScrW() * rW, ScrH() * rH)
end

function PANEL:SetRPos(x, y)
    local parent = self:GetParent()

    self:SetPos(parent:GetWide() * x - (self:GetWide()) / 2, parent:GetTall() * y - (self:GetTall()) / 2)
end

function PANEL:RDockMargin(left, top, right, bottom)
    local marginLeft = ScrW() * (left / 1920)
    local marginRight = ScrW() * (right / 1920)
    local marginTop = ScrH() * (top / 1080)
    local marginBottom = ScrH() * (bottom / 1080)
    
    self:DockMargin(marginLeft, marginTop, marginRight, marginBottom)
end

function PANEL:SetFont(fontName, fontSize)
    if not table.HasValue(fontTable, fontName .. "_" .. fontSize) then
        surface.CreateFont(fontName .. "_" .. fontSize, {
            font = fontName,
            size = ScreenScale(fontSize),
        })
    end
end

function PANEL:SetVBarColor(mainColor, holderColor)
    local vbar = self:GetVBar()

    vbar.Paint = function(self, w, h)
        draw.RoundedBox(90, (w * .5) / 2, 0, w * .5, h, mainColor)
    end

    vbar.btnGrip.Paint = function(self, w, h)
        draw.RoundedBox(90, (w * .5) / 2, 0, w * .5, h, holderColor)
    end

    vbar.btnUp.Paint = function(self, w, h)
        surface.SetDrawColor(Color(0, 0, 0, 0))
        surface.DrawRect(0, 0, w, h)
    end

    vbar.btnDown.Paint = function(self,w , h)
        surface.SetDrawColor(Color(0, 0, 0, 0))
        surface.DrawRect(0, 0, w, h)
    end 
end