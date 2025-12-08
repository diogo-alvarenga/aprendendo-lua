print("Digite um numero ")
local ent = io.read()
print("Valor digitado "..ent)

print(type(ent))


-- ===================


print("Digite outro numero para a soma ")
local num1 = tonumber(io.read())
print(type(num1))

print("Digite mais um numero ")
local num2 = tonumber(io.read())
print(type(num2))

print("A soma dos numeros é "..(num1+num2))


-- ===================


-- Converte para um numero
local dado = io.read("*n")

-- le todo o conteudo até o final
local dado = io.read("*a")

-- le uma linha (sem o caractere de nova linha)
local dado = io.read("*l")

--le uma linha, incluindo caractere de nova linha
local dado = io.read("*L")



