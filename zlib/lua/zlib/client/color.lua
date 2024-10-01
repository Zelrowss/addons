color_white = Color(255, 255, 255)
color_red = Color(255, 0, 0)
color_green = Color(0, 255, 0)
color_blue = Color(0, 0, 255)
color_yellow = Color(255, 255, 0)
color_cyan = Color(0, 255, 255)
color_purple = Color(255, 0, 255)
color_black = Color(0, 0, 0)
color_transparent = Color(0, 0, 0, 0)

color = color or {}

local function Lerp(a, b, t)
    return a + (b - a) * t
end

function color.Interpolate(color1, color2, t) 
    local interpolatedColor = {}
    
    interpolatedColor.r = Lerp(color1.r, color2.r, t)
    interpolatedColor.g = Lerp(color1.g, color2.g, t)
    interpolatedColor.b = Lerp(color1.b, color2.b, t)

    if color1.a and color2.a then
        interpolatedColor.a = Lerp(color1.a, color2.a, t)
    else
        interpolatedColor.a = 255
    end

    return interpolatedColor
end