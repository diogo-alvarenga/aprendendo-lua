print("Digite o ano ")
local ano = io.read("*n")

if (ano%4==0 and ano%100~=0) or (ano % 400 == 0) then
    print("Ano bissexto")
else
    print("Ano não bissexto")
end