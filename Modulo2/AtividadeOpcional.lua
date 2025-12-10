--dois arquivos
--copia de um para o outro

local file1 = io.open("arquivo2.txt","w")
file1:write("Conteudo do arquivo 2")
file1:close()

local file1Read = io.open("arquivo2.txt","r")
local conteudo = file1Read:read("*a")
print(conteudo)
file1Read:close()

local file2 = io.open("arquivo3.txt","w")
file2:write(conteudo)
file2:close()