print("Digite o tamanho do arquivo em MB ")
local mb = tonumber(io.read())

print("Digite a velocidade da internet em Mbps ")
local mbps = tonumber(io.read())

local tempo = (mb*8) / (mbps*60)

print("Ira levar "..tempo.." minutos")