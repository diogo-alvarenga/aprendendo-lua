local t = {}

for i =1,1e6 do -- 1e6 = 1 × 10⁶, que é 1 milhao
    t[i] = {value =1}
end

print("Memoria")
print(collectgarbage("count")) -- obter o numero de kb utilizados na memoria


--[[
    Quando eu faço isso abaixo, os 1 milhao de dados ainda existem,
    mas estao perdidos na memoria, eles perderam a referencia que é t
    Assim, o garbagecollector pode apagar eles

    Garbage collector apaga apenas objetos SEM REFERENCIA
]]
t = nil -- remove a referencia

collectgarbage("collect") -- exclui os objetos da memoria

print("Memoria")
print(collectgarbage("count"))

-- Lembrando, em Lua o garbagecollector é automatico, assim como no Java