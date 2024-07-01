modem = peripheral.wrap("top")
modem.open(tonumber(read()))
event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
if type(message) == "number" then redstone.setAnalogOutput("bottom", message) end