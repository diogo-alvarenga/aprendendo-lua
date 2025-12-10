print("Digite um numero")
local num = tonumber(io.read())

if num>=1 then
    print("Numero positivo")
elseif num<0 then
    print("Numero negativo")
else
    print("Numero neutro")
end
