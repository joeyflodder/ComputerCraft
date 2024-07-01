modem = peripheral.wrap("top")
colorCode = {14,1,4,13,9,11,10,6}
while(true)
do
    while(redstone.getInput("Front") == false)
    do
        for i= 1, 8
        do
            modem.transmit(i, i, colorCode[i])
            sleep(0.05)
        end
    end
    sleep(1)
end
