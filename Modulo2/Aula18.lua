local dia = os.date("%d")
local mes = os.date("%m")
local ano = os.date("%y")
local diaNome = os.date("%A")
local anoFull = os.date("%Y")
local dataCompleta = os.date("%d/%m/%y")
local dataHora = os.date()

print(diaNome,"-",dia,"/",mes,"/",ano,"-", anoFull)
print(dataCompleta)
print(dataHora)

--=============================================

print(os.clock()) -- medir tempo de CPU gasto pela execução do programa

print(os.time()) --Tempo em segundos desde 1970 - Unix Time 

print(os.execute("mkdir pasta")) -- executa algum comando
os.remove("teste.txt") -- remove algum arquivo (pastas nao, apenas arquivos)

os.rename("aaa.txt", "Novo.txt") -- renomeia o arquivo aaa.txt para Novo.txt

os.exit() -- finalizar programa em lua