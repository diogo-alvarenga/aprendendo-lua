--[[
    Como funciona?
    Na linha x, o "and" e o "or" nao funcionam como tabela verdade,
    mas da seguinte forma:
    Se a idade for maior ou igual a 18, a variavel mensagem ira receber a string "Maior de idade"
    se não, ela recebe "Menor de idade"

    Em java, isso seria equivalente a:
    String mensagem = idade >= 18 ? "Maior de idade" : "Menor de idade";
]]

local idade = 19
local mensagem = (idade>=18) and "Maior de idade" or "Menor de idade"
print(mensagem)

--=======================================

-- O codigo acima é o mesmo que:

local idade = 19 

if idade>= 18 then
    mensagem = "Maior de idade"
else
    mensagem = "Menor de idade"
end