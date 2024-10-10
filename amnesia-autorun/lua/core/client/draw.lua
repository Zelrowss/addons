local fontSizeTable = {}

function WrapText(text, max)
    local result = {}
    local currentLine = ""
    
    local function addLine(ligne)
        if #ligne > 0 then
            table.insert(result, ligne)
        end
    end

    for word in text:gmatch("%S+") do
        if #currentLine + #word + 1 > max then
            if #currentLine > 0 then
                if #currentLine + #word > max then
                    local pos = max - #currentLine
                    table.insert(result, currentLine .. "-" .. "\n" .. word:sub(1, pos))
                    currentLine = word:sub(pos + 1)
                else
                    table.insert(result, currentLine)
                    currentLine = word
                end
            else
                local pos = max
                while #word > pos do
                    table.insert(result, word:sub(1, pos) .. "-")
                    word = word:sub(pos + 1)
                end
                currentLine = word
            end
        else
            if #currentLine > 0 then
                currentLine = currentLine .. " " .. word
            else
                currentLine = word
            end
        end
    end

    addLine(currentLine)
    return result
end

function draw.ZText(text, fontName, fontSize, x, y, color, xAlign, yAlign)
    if not table.HasValue(fontSizeTable, fontName .. "_" .. fontSize) then
        surface.CreateFont(fontName .. "_" .. fontSize, {
            font = fontName,
            size = ScreenScale(fontSize)
        })

        table.insert(fontSizeTable, fontName .. "_" .. fontSize)
    end

    draw.SimpleText(text, fontName .. "_" .. fontSize, x, y, color, xAlign, yAlign)
end

function draw.MultilineText(text, maxChara, fontName, fontSize, x, y, color, xAlign, yAlign, spacing)
    local textOffset = 0
    local formatedText = WrapText(text, maxChara)

    for _, text in ipairs(formatedText) do
        draw.ZText(text, fontName, fontSize, x, y, color, xAlign, yAlign)
        textOffset = textOffset + spacing
    end
end