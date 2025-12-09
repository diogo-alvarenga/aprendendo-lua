print("Digite um numero (0-10): ")
local num = io.read("*n")

local var1 = num>10 -- true/false 

local var2 = num<0

if var1 or var2 then
    print("O numero esta fora do limite")
else
    print("O numero foi aceito")
end

-- ===========================

print("Digite o num1")
local n1 = io.read("*n")

print("Digite o num2")
local n2 = io.read("*n")

print("Digite o num3")
local n3 = io.read("*n")

if n1>n2 and n1>n3 then
    print("O numero 1 é o maior")
elseif n2>n1 and n2>n3 then
    print("O numero 2 é o maior")
else
    print("O numero 3 é o maior")
end