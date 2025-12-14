do
    function divisao(a,b)
        if b ==0 then
            return "Erro"
        else
            local div = a/b 
            return div
        end
    end

    print("Digite o primeiro numero ")
    local a = io.read("*n")
    print("Digite o segundo numero ")
    local b = io.read("*n")
    local res = divisao(a,b)

    if res== "Erro" then
        print("Nao pode dividir por 0.")
    else
        print("O resultado e "..res)
    end
end