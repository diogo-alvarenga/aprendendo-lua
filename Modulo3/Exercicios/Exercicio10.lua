local c1 = coroutine.create(function (tabela)
    print(tabela[1].. " entra na loja")
    for i = 1,3 do
        table.insert(tabela,"Item "..i)
        print("Item "..i.." adicionado na sacola de "..tabela[1])
    end
end)

local c2 = coroutine.create(function (tabela)
    print(tabela[1].. " entra na loja")
    for i = 1,3 do
        table.insert(tabela,"Item "..i)
        print("Item "..i.." adicionado na sacola de "..tabela[1])
    end
end)

local c3 = coroutine.create(function (tabela)
    print(tabela[1].. " entra na loja")
    for i = 1,3 do
        table.insert(tabela,"Item "..i)
        print("Item "..i.." adicionado na sacola de "..tabela[1])
    end
end)

local tabela1 = {"Cliente 1"}
local tabela2 = {"Cliente 2"}
local tabela3 = {"Cliente 3"}

coroutine.resume(c1,tabela1)
coroutine.resume(c2,tabela2)
coroutine.resume(c3,tabela3)