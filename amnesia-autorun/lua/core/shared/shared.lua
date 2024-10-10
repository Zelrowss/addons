function FormatMoney(amount)
    if amount >= 1e9 then
        return string.format("%.1fMa", amount / 1e9)
    elseif amount >= 1e6 then
        return string.format("%.1fM", amount / 1e6)
    elseif amount >= 1e3 then
        return string.format("%.1fk", amount / 1e3)
    else
        return tostring(amount)
    end
end