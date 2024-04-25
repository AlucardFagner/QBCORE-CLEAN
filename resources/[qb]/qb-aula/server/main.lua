local QBCore = exports['qb-core']:GetCoreObject()


local function meuCallback(resultado)
    print("RESULTADO DA OPERAÇÃO MEU CALLBACK", resultado)
end


local function operacaoAssincrona(callback)
  
    local resultado = 2024
    
 
    callback(resultado)

 
     QBCore.Functions.TriggerCallback('meuCallback', function(resultado)
        print("Resultado da função de callback:", resultado)
    end, "Valor 1", "Valor 2")
end


QBCore.Functions.CreateCallback('meuCallback', function(argumento1, argumento2)
    print("Argumento 1:", argumento1)
    print("Argumento 2:", argumento2)
end)




RegisterNetEvent('qb-aula:server:MeuEvento', function(source)
    if source then
        print(source, "Esse é o seu ID!")
    else
        print("Nada encontrado!")
    end
end)

QBCore.Commands.Add('aula', 'Meu Evento', {}, false, function(source)

    -- operacaoAssincrona(meuCallback)
    meuCallback(resultado)
    -- TriggerEvent('qb-aula:server:MeuEvento', source)
end)

print("LIGADO!")
