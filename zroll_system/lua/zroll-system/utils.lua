local fontTable = {}

timer.Simple(1, function()
    if CLIENT then
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
    
        function RW(w)
            return ScrW() * w / 1920
        end
    
        function RH(h)
            return ScrH() * h / 1080
        end
    end

    function AntiBot(ply)
        if not IsValid(ply) or not ply:IsPlayer() then return end
    end

    function zroll_system:UseFont(fontSize)
        if not table.HasValue(fontTable, fontSize) then
            surface.CreateFont("zroll_system_font_" .. fontSize, {
                font = "Arial",
                size = ScreenScale(fontSize)
            })

            table.insert(fontTable, fontSize)
        end

        return "zroll_system_font_" .. fontSize
    end
end)