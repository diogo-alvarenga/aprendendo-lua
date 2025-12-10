print("Digite um numero")
local num = io.read("*n")

print("Tabuada de ", num)

local i =0

while i<=10 do
    print(num," X ",i, " = ", (num*i))
    i = i+1
end