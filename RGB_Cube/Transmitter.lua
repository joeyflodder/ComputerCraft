modem = peripheral.wrap("top")
while(true)
do
    while(redstone.getInput("top"))
    do
        for i= 1, 8
        do
            modem.transmit(i, i, i)
            sleep(0.05)
        end
    end
    sleep(1)
end