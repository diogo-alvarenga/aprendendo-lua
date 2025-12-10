print("Digite um numero ")
local num = io.read("*n")

if math.type(num) == "float" then
    print("Decimal")
else
    print("Inteiro")
end