-- Dofile() e Require()

-- Dofile 
    --Execucao de um codigo, multiplas vezes
    --Importar dados desse codigo
        -->>Uso para executar codigo<<
-- Require 
    --Execucao de um codigo, nao sendo esse o objetivo
    --Importa dados(inclui modulos)
    --Permite retorno
        -->>Uso para importar dados<<
-- Executa o outro arquivo
dofile("C:/Users/Administrator/Downloads/Lua/Modulo1/Aula01.lua") -- executa o codigo
dofile("C:/Users/Administrator/Downloads/Lua/Modulo3/teste.lua")
print(a) -- o dofile importa a variavel do outro arquivo, essa variavel esta em outro codigo

local var = require("dados")
print(var)