print("Digite um numero ")
local n1 = io.read("*n")
print("Digite um numero ")
local n2 = io.read("*n")

if n1>n2 then
    print("O maior é ", n1)
elseif n2>n1 then
    print("O maior é ", n2)
else
    print(n1, " = ", n2)
end