print("Digite a primeira nota ")
local n1 = io.read("*n")

print("Digite a segunda nota ")
local n2 = io.read("*n")

if (n1+n2)/2 == 10 then
    print("Aprovado com Distinção")
elseif (n1+n2)/2 >= 7 then
    print("Aprovado")
else
    print("Reprovado")
end