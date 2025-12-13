-- modulo / biblioteca / pacote

local tabela ={} -- dados, funcoes..

tabela.var1 = 10
tabela.var2 = 20
tabela.var3 = 30

function tabela.nome() -- é uma função que está dentro da minha tabela
    print("Ola, Mundo")
end

return tabela -- require só funciona porque retorno a tabela