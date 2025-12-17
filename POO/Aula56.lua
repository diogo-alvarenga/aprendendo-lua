
-- Complexidade Exponencial O(n^X)
--[[
    function fibonacci(n)
        if n<=1 then
            return n
        else
            return fibonacci(n-1)+fibonacci(n-2)
        end
    end

    print(fibonacci(40))
]]
--===============================================

-- O codigo acima levou 10 segundos para ser executado, o de baixo resolve isso

local memoriaCache = {}

    function fibonacci(n)
        if memoriaCache[n] then
            return memoriaCache[n]
        end
        if n<=1 then
            memoriaCache[n] = n
        else
            memoriaCache[n] = fibonacci(n-1)+fibonacci(n-2)
        end

        return memoriaCache[n]
    end

    print(fibonacci(40))
--===============================================
-- Outra forma - Funcao memorizada

function memoize(f)
    local cache = {}
    return function (x)
        if not cache[x] then
            cache[x] = f(x)
        end
        return cache[x]        
    end
end

fibonacci = memoize(function (n)
    if n<= 1 then
        return n
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end)

print(fibonacci(40))