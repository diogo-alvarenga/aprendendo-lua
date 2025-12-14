
local notas = {}

for x =1,5 do
    print("Digite a nota "..x)
    notas[x] = tonumber(io.read())
end

local media = 0
for x =1,5 do
    media = media + notas[x]/5
end

print("A media e "..media)