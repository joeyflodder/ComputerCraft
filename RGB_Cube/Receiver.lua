while true do
    if modem == nill then
        modem = peripheral.wrap("top")
        modem.open(0)
    end
    event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
    if type(message) == "number" then 
        redstone.setAnalogOutput("bottom", message) 
    end
end