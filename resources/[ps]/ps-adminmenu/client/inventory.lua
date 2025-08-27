-- Open Inventory
RegisterNetEvent('ps-adminmenu:client:openInventory', function(data, selectedData)
    local data = CheckDataFromKey(data)
    if not data or not CheckPerms(data.perms) then return end
    local jogador = selectedData["Jogador"].value -- "Player" para "jogador"

    if Config.Inventory == 'ox_inventory' then
        TriggerServerEvent("ps-adminmenu:server:OpenInv", jogador)
    else
        TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", jogador)
    end
end)

-- Open Stash
RegisterNetEvent('ps-adminmenu:client:openStash', function(data, selectedData)
    local data = CheckDataFromKey(data)
    if not data or not CheckPerms(data.perms) then return end
    local deposito = selectedData["Deposito"].value -- "Stash" para "deposito"

    if Config.Inventory == 'ox_inventory' then
        TriggerServerEvent("ps-adminmenu:server:OpenStash", deposito)
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", tostring(deposito))
        TriggerEvent("inventory:client:SetCurrentStash", tostring(deposito))
    end
end)

-- Open Trunk
RegisterNetEvent('ps-adminmenu:client:openTrunk', function(data, selectedData)
    local data = CheckDataFromKey(data)
    if not data or not CheckPerms(data.perms) then return end
    local placaVeiculo = selectedData["Placa"].value -- "Plate" para "placaVeiculo"

    if Config.Inventory == 'ox_inventory' then
        TriggerServerEvent("ps-adminmenu:server:OpenTrunk", placaVeiculo)
    else
        TriggerServerEvent("inventory:server:OpenInventory", "trunk", tostring(placaVeiculo))
        TriggerEvent("inventory:client:SetCurrentStash", tostring(placaVeiculo))
    end
end)
