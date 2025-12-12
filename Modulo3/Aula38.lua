-- Biblioteca Coroutine
-- Corroutina - função que pode ser pausada e depois voltar a ser executada

-- Estados: Suspensa, Finalizada e Em Execucao

-- create -> criamos a coroutine
-- status -> estado
-- resume -> iniciar
-- yield -> pausar

local co = coroutine.create(function ()
    for n =1,10 do
        print(n)
        if n==5 then
            print("Pausado")
            coroutine.yield() -- pausa
        end
         
    end
end) -- funcao passada por parametro

print(coroutine.status(co)) -- vai dar suspensa, pois nao foi inicializada

coroutine.resume(co) -- como se inicia a funcao co, envie ela ao metodo resume

print(coroutine.status(co))

coroutine.resume(co) -- volta a rodar

--=============================================

function contador()
    for i =1,5 do
        print("Contador: "..1)
        coroutine.yield()
    end
end

co = coroutine.create(contador)

for i =1,5 do
    print("Main: resumindo a corrotina")
    coroutine.resume(co)
end