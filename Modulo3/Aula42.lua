-- Biblioteca debug 
-- Mensagem de erro
-- print(debug.traceback("Um erro ocorreu aqui"))

-- debug.getlocal permite acessar o nome e o valor de variáveis locais para depuração
-- setlocal coloca valores na variavel
local function exemplo()
    local var1 =10
    local var2 =20
    print(debug.getlocal(1,1)) -- o primeiro argumento refere se a funcao atual, o segundo, é a primeira variavel
    print(debug.getlocal(1,2))
    debug.setlocal(1,1,100) -- a funcao; a primeira variavel; o valor que que iremos inserir
    print(var1)
end

exemplo()

-- Upvalue - variavel que define o fechamento de uma funcao (nesse caso é o x, a variavel retornada)

local function outer()
    local x = 10 
    local function inner()
        return x
    end
    print(debug.getupvalue(inner,1)) -- retorna o nome e o valor de uma variavel que determina o fechamento da funcao (no caso é x)
    debug.setupvalue(inner,1,50) -- coloca um valor na variavel de fechamento
    print(inner())
end

outer()

--=====================================================

-- debug.getregistry() retorna a tabela de registro, uma tabela interna do lua que armazena a referencia dos objetos
print(debug.getregistry()) --retorna um endereço de memoria 

----=====================================================
--- inicia uma interaçao com o usuario atraves de um console, serve para dar comandos como print("")
debug.debug() -- para sair digite cont

-- existe a funcao getinfo(), para detalhes, olhar a aula 66 nos 12 minutos