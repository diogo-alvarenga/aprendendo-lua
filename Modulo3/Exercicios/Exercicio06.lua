
function recebeTabela(tabelainicio, fun)
    local novatabela = fun(tabelainicio)
    return novatabela
end

local func = function (a)
    local tabela = {}
    for _,v in pairs(a) do
        if v%2==0 then
            table.insert(tabela,v)
        end
    end
    return tabela
end

local tabelainicio = {var1 = 1, var2 =2,var3 =3, var4 =4,var5 =5,var6 =6, var7 =7,var8 =8,var9 =9,var10 =10}

local res = recebeTabela(tabelainicio,func)

for _,v in ipairs(res) do
    print(v)
end