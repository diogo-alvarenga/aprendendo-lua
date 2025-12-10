print("Digite um numero ")
local n1 = io.read("*n")
print("Digite outro numero ")
local n2 = io.read("*n")

::opcao::
print("Digite 1 para adição ")
print("Digite 2 para subtração ")
print("Digite 3 para multiplicação ")
print("Digite 4 para divisão ")

local opc = io.read("*n")

if opc ==1 then
    print(n1," + ", n2, " = ", (n1+n2))
elseif opc ==2  then
    print(n1," - ", n2, " = ", (n1-n2))
elseif opc ==3 then
    print(n1," * ", n2, " = ", (n1*n2))
elseif opc ==4 then
    if n2 ~=0 then
        print(n1," / ", n2, " = ", (n1/n2))    
    else
        print("Divisão por 0 não é permitido")
    end
    
else
    print("Opcao invalida")
    goto opcao
end