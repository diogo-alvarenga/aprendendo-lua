local soma = 0
function somaElementos(tabela)
    for c,v in pairs(tabela) do
        soma = soma+v
    end
    return soma
end


local tabela ={num1 = 10,num2 =10,num3 =10}

local a =somaElementos(tabela)
print(a)