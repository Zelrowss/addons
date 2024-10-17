local titleFonts = {}
local coreFonts = {}

function UseTitleFont(fontSize)
    if not table.HasValue(titleFonts, fontSize) then
        surface.CreateFont("OPTIColumna_" .. fontSize, {
            font = "OPTIColumna",
            size = ScreenScale(fontSize)
        }) 

        table.insert(titleFonts, fontSize)
    end

    return "OPTIColumna_" .. fontSize
end

function UseFont(fontSize)
    if not table.HasValue(coreFonts, fontSize) then
        surface.CreateFont("HybridMediumW08-Regular" .. fontSize, {
            font = "HybridMediumW08-Regular",
            size = ScreenScale(fontSize)
        }) 

        table.insert(coreFonts, fontSize)
    end

    return "HybridMediumW08-Regular" .. fontSize
end