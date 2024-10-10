function BroadcastMessage(msg)
    for _, ply in ipairs(player.GetAll()) do
        ply:ChatPrint(msg)
    end
end