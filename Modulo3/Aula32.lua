-- Funcoes recursivas - que chamam a si mesmas

local num = 0

local function nome()

    if num<5 then
        print("Ola, mundo")
        num = num+1
        nome()
    end

end

nome()

--[[
    entra 5 na funcao,
    ele primeiro executa fatorial(n-1) e só no final, quando houver
    retorno(chegar a 0), ele executa n*
    ai o retorno sera 1, que fará 2*1, 3*2...
]]

local function fatorial(n)
    if n==0 then
        return 1
    else 
        return n*fatorial(n-1)
    end
end

print(fatorial(5))