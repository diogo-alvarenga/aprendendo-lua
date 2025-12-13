-- Analise e tratamentos de erros 

-- exibe mensagem de erro 
--error("Mensagem de erro")

-- gera erros com base em condicoes 
--assert(x >= 0, "Numero negativo nao é permitido")



function divide(a,b)
    if b==0 then
        error("Divisao por zero nao permitida! Reinicie o programa")
    end
    return a/b
end

print(divide(15,3))-- se eu colocar 0 no segundo parametro, ele cai na mensagem de erro

-- ========================================================

function raiz(x)
    -- se a condicao for falsa, ele manda a mensagem
    assert(x>=0, "Numero não pode ser negativo")
    return math.sqrt(x)
end

print(raiz(5)) -- se colocar um numero negativo, ele cai na condicao de erro

--=========================================================
-- uso da funcao pcall
-- status é um valor booleano
local status, resultado = pcall(function ()
    return divide(10,0) -- vai dar um erro de divisao por 0
end)

-- caso status seja false
if not status then
    print("Erro capturado: ".. resultado)
else
    print("Resultado: ".. resultado)
end

--========================================================
-- o loop não é iterrompido 
function operacao(arr)
    assert(type(arr) =="table", "Parametro deve ser uma tabela")
    for i,v in ipairs(arr) do
        local status, resultado = pcall(function () return v/i end)
        if not status then
            print("Erro no indice:", i, resultado)
        else
            print("Resultado no indice", i, "é", resultado)
        end
    end
end

operacao({10,20,"a",40}) -- gerará um erro, mas o loop nao é iterrompido