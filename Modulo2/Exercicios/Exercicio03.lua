print("Digite M para masculino, ou F para feminino")
local char = io.read()

if char == "F" or char =="f" then
    print("Feminino")
elseif char == "M" or char == "m" then
    print("Masculino")
else
    print("Sexo invalido")
end