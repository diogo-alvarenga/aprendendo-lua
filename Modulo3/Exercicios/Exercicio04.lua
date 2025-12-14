local x =0
function produto(...)
    for i,v in pairs({...})do
        if i==1 then
            x=v
        else
            x=x*v
        end
    end
    return x
end

local p = produto(10,20,30,40,50)
print("O produto e "..p)