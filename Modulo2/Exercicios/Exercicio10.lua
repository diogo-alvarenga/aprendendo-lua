print("Digite uma nota entre 0 e 10 ")
local nota = io.read("*n")

while nota <0 or nota >10 do
    print("Valor invalido")
    print("Digite uma nota entre 0 e 10 ")
    nota = io.read("*n")
end 

print("Valor valido")