-- Manipulação de Arquivos

-- r -> ler 
-- w -> escrever
-- a -> adicionar novos dados ao fim 
-- r+ -> leitura e escrita 
-- w+ -> leitura e escrita sobrescreve o conteudo 
-- a+ -> leitura e apendice


-- Leitura de um Arquivo 

-- *a -> lê todo o arquivo 
-- *l -> lê uma linha
-- *n -> lê um numero do arquivo 
-- number -> lê um numero especifico de bytes 


-- Abrir o arquivo (posso usar: r,w,a,r+,w+,a+)
local file = io.open("arquivo.txt","r")

-- Ler o conteudo do arquivo (posso usar: *a, *l, *n)
local content = file:read("*a") 
print(content)

-- Fechar o arquivo (é necessario devido ao buffer)
file:close()

--====================================================

-- Abrir o arquivo
local file = io.open("arquivo.txt","w") -- aqui especifiquei que irei escrever 

-- Escrever no arquivo (substitui o que já está escrito)
file:write("Ola, Lua!") -- Eu passo como argumento o que quero escrever 

file:write([[

        É assim que escrevo com
        varias linhas
        :)

]])

-- Fechar o arquivo (é necessario devido ao buffer)
file:close()


--===================================================

-- Criar: io.open()  se o arquivo nao existe, ele cria 
local file = io.open("arquivo2.txt","w")
    --Posso tambem verificar se o arquivo existe, se nao existir eu mando uma mensagem de erro 
    local file, message = io.open("arquivo3.txt","r") -- r - esta tendando ler um arquivo que nao existe
    if not file then
        print("Erro ao abrir o arquivo: "..message)
    else
        print("Operação realizada com sucesso")
        file:close()
    end


-- Copiar: Ler o conteudo de um arquivo e escrever em um novo arquivo 

-- Mover: Usar os.rename() para mover ou renomear um arquivo 

-- Deletar: Usar os.remove() para excluir um arquivo