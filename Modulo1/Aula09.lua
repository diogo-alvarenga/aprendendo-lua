local texto = "Ola, Mundo!"
local M = string.upper(texto)
local m = string.lower(texto)
print(M,m)


-- =========================


local nome = "Joao"
local idade = 25
local form = string.format("O meu nome e %s e tenho %d anos", nome, idade)
print(form)


-- =========================


local texto = "Ola, Mundo!"
local inicio, fim = string.find(texto, "Mundo")
print(inicio, fim) -- mostra o inicio e o fim de "Mundo", o caractere 6 é o "M", e o 10 é "o"

local subtexto = string.sub(texto, 6,10)
print(subtexto) -- ele retira o que existe entre o caractere 6 e 10