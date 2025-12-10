::inicio:: 
print("Digite um numero (0-10): ")
local num = io.read("*n")

local var1 = num>10 

local var2 = num<0

if var1 or var2 then
    print("O numero esta fora do limite")
    goto inicio -- volta para a label ::inicio::
else
    print("Numero aceito")
end