print("Digite o primeiro numero ")
local n1 = io.read("*n")

print("Digite o segundo numero ")
local n2 = io.read("*n")

print("Digite o terceiro numero ")
local n3 = io.read("*n")

if n1>n2 and n1> n3 then
    print("O maior é n1 = ", n1)
elseif n2> n1 and n2>n3 then
    print("O maior é n2 = ", n2)
else
    print("O maior é n3 = ", n3)
end