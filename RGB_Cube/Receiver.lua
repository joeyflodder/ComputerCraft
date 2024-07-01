modem = peripheral.wrap("top")
modem.open(0)
event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
if type(message) == "number" then redstone.setAnalogOutput("bottom", message) end