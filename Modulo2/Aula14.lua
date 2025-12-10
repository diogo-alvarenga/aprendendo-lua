print("Digite a sua idade: ")
local idd = io.read("*n")
io.read()
print("Voce possui habilitação para conduzir? (s/n)")
local res = io.read()

if idd>= 18 then
    if res =="s" or res=="S" then
        print("Voce pode conduzir")
    else
        print("Voce nao pode conduzir")
    end
else
    print("Voce nao pode conduzir")
end