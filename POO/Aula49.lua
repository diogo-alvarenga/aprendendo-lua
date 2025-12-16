local classe_felinos = require("felinos")

local gato = classe_felinos:new("Cinza")
local tigre = classe_felinos:new("Laranja")

gato:damage(10)
print(gato.cor)
print(tigre.cor)