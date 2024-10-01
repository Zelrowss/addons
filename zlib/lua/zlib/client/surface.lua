hook.Add("ShutDown", "ZLibDeleteTempFile", function()
    if not file.Exists("zlib/", "DATA") then return end

	file.Delete("zlib/", "DATA")
end)

function surface.DrawFCircle(x, y, radius, angle_start, angle_end, color)
	local poly = {}
	angle_start = angle_start or 0
	angle_end   = angle_end   or 360
	
	poly[1] = { x = x, y = y }
	for i = math.min( angle_start, angle_end ), math.max( angle_start, angle_end ) do
		local a = math.rad( i )
		if angle_start < 0 then
			poly[#poly + 1] = { x = x + math.cos( a ) * radius, y = y + math.sin( a ) * radius }
		else
			poly[#poly + 1] = { x = x - math.cos( a ) * radius, y = y - math.sin( a ) * radius }
		end
	end
	poly[#poly + 1] = { x = x, y = y }

	draw.NoTexture()
	surface.SetDrawColor( color or color_white )
	surface.DrawPoly( poly )

	return poly
end

function surface.DrawECircle(x, y, radius, outlineSize, angle_start, angle_end, color)
    angle_start = angle_start or 0
    angle_end = angle_end or 360

	render.ClearStencil()
	render.SetStencilEnable(true)
  
	render.SetStencilWriteMask(1)
	render.SetStencilTestMask(1)
  
	render.SetStencilFailOperation(STENCILOPERATION_REPLACE)
	render.SetStencilPassOperation(STENCILOPERATION_REPLACE)
	render.SetStencilZFailOperation(STENCILOPERATION_KEEP)
	render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_NEVER)
	render.SetStencilReferenceValue(1)
  
	surface.DrawFCircle(x, y, radius - outlineSize, angle_start, angle_end, color)
  
	render.SetStencilFailOperation(STENCILOPERATION_REPLACE)
	render.SetStencilPassOperation(STENCILOPERATION_REPLACE)
	render.SetStencilZFailOperation(STENCILOPERATION_KEEP)
	render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_EQUAL)
	render.SetStencilReferenceValue(0)
  
	surface.DrawFCircle(x, y, radius, angle_start, angle_end, color)
  
	render.SetStencilEnable(false)
	render.ClearStencil()
end


function surface.SetScissorTexturedRect(x, y, w, h, sW, sH, mat)
    surface.SetMaterial(mat)
    surface.SetDrawColor(color_white)

    render.SetStencilEnable(true)

    render.SetStencilWriteMask(1)
    render.SetStencilTestMask(1)

    render.ClearStencil()
    render.SetStencilReferenceValue(1)
    render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_ALWAYS)
    render.SetStencilPassOperation(STENCILOPERATION_REPLACE)

    surface.DrawTexturedRect(x, y, sW, sH)

    render.SetStencilReferenceValue(1)
    render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_EQUAL)
    render.SetStencilPassOperation(STENCILOPERATION_KEEP)

    surface.DrawTexturedRect(x, y, w, h)

    render.SetStencilEnable(false)
end

function surface.DrawImgurRect(imageURL, w, h)
    if not imageURL:lower():match("%.png$") then
        imageURL = imageURL .. ".png"
    end

    local fileName = imageURL:match(".*/(.*)$")

	if not file.Exists("zlib/icons/" .. fileName, "DATA") then
		http.Fetch(imageURL,
			function(body, size, headers, code)
				if not file.Exists("zlib/icons/", "DATA") then
					file.CreateDir("zlib/icons/")
				end

				file.Write("zlib/icons/" .. fileName, body)
				return false
			end,
			function(error)
				return false
			end
		)
	end

	surface.SetDrawColor(color_white)
	surface.SetMaterial(Material("../data/zlib/icons/" .. string.lower(fileName)))
	surface.DrawTexturedRect(0, 0, w, h)
end

local gradientMat = Material("background_gradient.png")
function surface.DrawGradient(w, h, col, inverse)
	surface.SetMaterial(gradientMat)
	surface.SetDrawColor(col)
	surface.DrawTexturedRectRotated(w * .5, h * .5, w, h, inverse and -180 or 0)
end

function surface.DrawPlayerAvatar(ply, w, h)
    if not file.Exists("zlib/playerIcons/" .. ply:SteamID64(), "DATA") then
        http.Fetch("http://steamcommunity.com/profiles/" .. ply:SteamID64() .. "?xml=1", 
            function(body)
                local avatarURL = string.match(body, "<avatarFull><!%[CDATA%[(.-)%]%]></avatarFull>")
                http.Fetch(avatarURL,
                    function(body, len, headers, code)
                        if not file.Exists("zlib/playerIcons/", "DATA") then
                            file.CreateDir("zlib/playerIcons/")
                        end

                        file.Write("zlib/playerIcons/" .. ply:SteamID64() .. ".png", body)
                        return false
                    end,
                    function(error)
                        return false
                    end
                )
            end,
            function(error)
                return false
            end
        )
    end

    surface.SetMaterial(Material("../data/zlib/playerIcons/" .. ply:SteamID64() .. ".png"))
    surface.SetDrawColor(color_white)
    surface.DrawTexturedRect(0, 0, w, h)
end
