print("Digite quanto ganha por hora ")
local ganhoHora = tonumber(io.read())

print("Digite quantas horas trabalho esse mes")
local horasTrabalhadas = tonumber(io.read())

local total = horasTrabalhadas*ganhoHora

print("Voce ira receber o salario de "..total)