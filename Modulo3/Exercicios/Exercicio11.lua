local function safeLog()
    local file = io.open("log.txt", "w")
    file:write("mensasgem de log")
    file:close()
    return true
end

local function tratarerro(err)
    return "Erro :"..err
end

local status,resultado = xpcall(function (...) safeLog() end, tratarerro)


if not status then
    print(resultado)
else
    print("Sucesso")
end

