function advinhaNumero(x,...)
    for i, v in pairs({...}) do
        if x==v then
            print("Acertou! O valor era "..v)
            return true 
        end
    end
    return false    
end

local x = math.random(10)

local truefalse = advinhaNumero(x,1,2,3,4,5)

print(truefalse)
