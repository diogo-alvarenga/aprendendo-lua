-- Funcoes
--[[Em lua, uma funçao é um tipo de dado, entao posso armazenar
    em uma variavel]]

print(type(print)) -- vai mostar que o tipo de print é function

local mostra = print 
mostra("Ola, mundo")

-- criar Função 

local function Exibe()
    print("Ola, Mundo")
    print("Outra coisa")
end

Exibe()