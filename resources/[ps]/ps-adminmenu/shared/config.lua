Config = Config or {}

Config.Fuel = "LegacyFuel"        -- "ps-fuel", "LegacyFuel"
Config.ResourcePerms = 'admin' -- permission to control resource(start stop restart)
Config.ShowCommandsPerms = 'admin' -- permission to show all commands
Config.RenewedPhone = false    -- if you use qb-phone from renewed. (multijob)

-- Key Bindings
Config.Keybindings = true
Config.AdminKey = "DEL"
Config.NoclipKey = "F2"

-- Give Car
Config.DefaultGarage = "Alta Garage"

Config.Actions = {
    ["admin_car"] = {
        label = "Carro de Admin",
        type = "client",
        event = "ps-adminmenu:client:Admincar",
        perms = "mod",
    },

    ["ban_player"] = {
        label = "Banir Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador", option = "dropdown", data = "players" },
            { label = "Motivo", option = "text" },
            {
                label = "Duração",
                option = "dropdown",
                data = {
                    { label = "Permanente",  value = "2147483647" },
                    { label = "10 Minutos", value = "600" },
                    { label = "30 Minutos", value = "1800" },
                    { label = "1 Hora",     value = "3600" },
                    { label = "6 Horas",    value = "21600" },
                    { label = "12 Horas",   value = "43200" },
                    { label = "1 Dia",      value = "86400" },
                    { label = "3 Dias",     value = "259200" },
                    { label = "1 Semana",   value = "604800" },
                    { label = "3 Semanas",  value = "1814400" },
                },
            },
            { label = "Confirmar", option = "button", type = "server", event = "ps-adminmenu:server:BanPlayer" },
        },
    },

    ["bring_player"] = {
        label = "Puxar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:BringPlayer" },
        },
    },

    ["change_weather"] = {
        label = "Alterar Clima",
        perms = "mod",
        dropdown = {
            {
                label = "Clima",
                option = "dropdown",
                data = {
                    { label = "Muito ensolarado", value = "Extrasunny" },
                    { label = "Limpo",      value = "Clear" },
                    { label = "Neutro",    value = "Neutral" },
                    { label = "Poluição",       value = "Smog" },
                    { label = "Neblina",       value = "Foggy" },
                    { label = "Nublado",   value = "Overcast" },
                    { label = "Nuvens",     value = "Clouds" },
                    { label = "Limpando",     value = "Clearing" },
                    { label = "Chuva",       value = "Rain" },
                    { label = "Trovão",    value = "Thunder" },
                    { label = "Neve",       value = "Snow" },
                    { label = "Nevasca",   value = "Blizzard" },
                    { label = "Neve leve",  value = "Snowlight" },
                    { label = "Natal",       value = "Xmas" },
                    { label = "Halloween",  value = "Halloween" },
                },
            },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:ChangeWeather" },
        },
    },

    ["change_time"] = {
        label = "Alterar Hora",
        perms = "mod",
        dropdown = {
            {
                label = "Eventos de Hora",
                option = "dropdown",
                data = {
                    { label = "Amanhecer", value = "06" },
                    { label = "Manhã", value = "09" },
                    { label = "Meio-dia",    value = "12" },
                    { label = "Pôr do Sol",  value = "21" },
                    { label = "Noite", value = "22" },
                    { label = "Madrugada",   value = "24" },
                },
            },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:ChangeTime" },
        },
    },

    ["change_plate"] = {
        label = "Alterar Placa",
        perms = "mod",
        dropdown = {
            { label = "Placa",   option = "text" },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:ChangePlate" },
        },
    },

    ["clear_inventory"] = {
        label = "Limpar Inventário",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:ClearInventory" },
        },
    },

    ["clear_inventory_offline"] = {
        label = "Limpar Inventário Offline",
        perms = "mod",
        dropdown = {
            { label = "ID do Cidadão", option = "text",   data = "players" },
            { label = "Confirmar",    option = "button", type = "server", event = "ps-adminmenu:server:ClearInventoryOffline" },
        },
    },

    ["clothing_menu"] = {
        label = "Dar Menu de Roupas",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:ClothingMenu" },
        },
    },

    ["set_ped"] = {
        label = "Definir Ped",
        perms = "mod",
        dropdown = {
            { label = "Jogador",     option = "dropdown", data = "players" },
            { label = "Modelos de Ped", option = "dropdown", data = "pedlist" },
            { label = "Confirmar",    option = "button",   type = "server", event = "ps-adminmenu:server:setPed" },
        },
    },

    ["copy_coords"] = {
        label = "Copiar Coordenadas",
        perms = "mod",
        dropdown = {
            {
                label = "Copiar Coords",
                option = "dropdown",
                data = {
                    { label = "Copiar Vector2", value = "vector2" },
                    { label = "Copiar Vector3", value = "vector3" },
                    { label = "Copiar Vector4",    value = "vector4" },
                    { label = "Copiar Heading",  value = "heading" },
                },
            },
            { label = "Copiar para Área de Transferência", option = "button", type = "client", event = "ps-adminmenu:client:copyToClipboard"},
        },
    },

    ["delete_vehicle"] = {
        label = "Deletar Veículo",
        type = "command",
        event = "dv",
        perms = "mod",
    },

    ["freeze_player"] = {
        label = "Congelar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:FreezePlayer" },
        },
    },

    ["drunk_player"] = {
        label = "Deixar Jogador Bêbado",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:DrunkPlayer" },
        },
    },

    ["remove_stress"] = {
        label = "Remover Stress",
        perms = "mod",
        dropdown = {
            { label = "Jogador (Opcional)", option = "dropdown", data = "players" },
            { label = "Confirmar",           option = "button",   type = "server", event = "ps-adminmenu:server:RemoveStress" },
        },
    },

    ["set_ammo"] = {
        label = "Definir Munição",
        perms = "admin",
        dropdown = {
            { label = "Quantidade de Munição", option = "text" },
            { label = "Confirmar",      option = "button", type = "client", event = "ps-adminmenu:client:SetAmmo" },
        },
    },

    -- ["nui_focus"] = {
    --     label = "Dar Foco NUI",
    --     perms = "mod",
    --     dropdown = {
    --         { label = "Jogador",  option = "dropdown", data = "players" },
    --         { label = "Confirmar", option = "button",   type = "client", event = "" },
    --     },
    -- },

    ["god_mode"] = {
        label = "Modo Deus",
        type = "client",
        event = "ps-adminmenu:client:ToggleGodmode",
        perms = "mod",
    },

    -- ["give_car"] = {
    --     label = "Dar Carro",
    --     perms = "admin",
    --     dropdown = {
    --         { label = "Veículo",           option = "dropdown", data = "vehicles" },
    --         { label = "Jogador",            option = "dropdown", data = "players" },
    --         { label = "Placa (Opcional)",  option = "text" },
    --         { label = "Garagem (Opcional)", option = "text" },
    --         { label = "Confirmar",           option = "button",   type = "server",  event = "ps-adminmenu:server:givecar" },
    --     }
    -- },

    ["invisible"] = {
        label = "Invisível",
        type = "client",
        event = "ps-adminmenu:client:ToggleInvisible",
        perms = "mod",
    },

    ["blackout"] = {
        label = "Alternar Apagão",
        type = "server",
        event = "ps-adminmenu:server:ToggleBlackout",
        perms = "mod",
    },

    ["toggle_duty"] = {
        label = "Alternar Serviço",
        type = "server",
        event = "QBCore:ToggleDuty",
        perms = "mod",
    },

    ["toggle_laser"] = {
        label = "Alternar Laser",
        type = "client",
        event = "ps-adminmenu:client:ToggleLaser",
        perms = "mod",
    },

    ["set_perms"] = {
        label = "Definir Permissões",
        perms = "admin",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            {
                label = "Permissões",
                option = "dropdown",
                data = {
                    { label = "Mod",   value = "mod" },
                    { label = "Admin", value = "admin" },
                    { label = "God",   value = "god" },
                },
            },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:SetPerms" },
        },
    },

    ["set_bucket"] = {
        label = "Definir Routing Bucket",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Bucket",  option = "text" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:SetBucket" },
        },
    },

    ["get_bucket"] = {
        label = "Obter Routing Bucket",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:GetBucket" },
        },
    },

    ["mute_player"] = {
        label = "Mutar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "client", event = "ps-adminmenu:client:MutePlayer" },
        },
    },

    ["noclip"] = {
        label = "Noclip",
        type = "client",
        event = "ps-adminmenu:client:ToggleNoClip",
        perms = "mod",
    },

    ["open_inventory"] = {
        label = "Abrir Inventário",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "client", event = "ps-adminmenu:client:openInventory" },
        },
    },

    ["open_stash"] = {
        label = "Abrir Baú",
        perms = "mod",
        dropdown = {
            { label = "Baú",   option = "text" },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:openStash" },
        },
    },

    ["open_trunk"] = {
        label = "Abrir Porta-malas",
        perms = "mod",
        dropdown = {
            { label = "Placa",   option = "text" },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:openTrunk" },
        },
    },

    ["change_vehicle_state"] = {
        label = "Definir Estado do Veículo na Garagem",
        perms = "mod",
        dropdown = {
            { label = "Placa",   option = "text" },
            {
                label = "Estado",
                option = "dropdown",
                data = {
                    { label = "Dentro",  value = "1" },
                    { label = "Fora", value = "0" },
                },
            },
            { label = "Confirmar", option = "button", type = "server", event = "ps-adminmenu:server:SetVehicleState" },
        },
    },

    ["revive_all"] = {
        label = "Reanimar Todos",
        type = "server",
        event = "ps-adminmenu:server:ReviveAll",
        perms = "mod",
    },

    ["revive_player"] = {
        label = "Reanimar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:Revive" },
        },
    },

    ["revive_radius"] = {
        label = "Reanimar por Raio",
        type = "server",
        event = "ps-adminmenu:server:ReviveRadius",
        perms = "mod",
    },

    ["refuel_vehicle"] = {
        label = "Abastecer Veículo",
        type = "client",
        event = "ps-adminmenu:client:RefuelVehicle",
        perms = "mod",
    },

    ["set_job"] = {
        label = "Definir Emprego",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Emprego",     option = "dropdown", data = "jobs" },
            { label = "Cargo",   option = "text",     data = "grades" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:SetJob" },
        },
    },

    ["set_gang"] = {
        label = "Definir Gangue",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Gangue",    option = "dropdown", data = "gangs" },
            { label = "Cargo",   option = "text",     data = "grades" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:SetGang" },
        },
    },

    ["give_money"] = {
        label = "Dar Dinheiro",
        perms = "admin",
        dropdown = {
            { label = "Jogador", option = "dropdown", data = "players" },
            { label = "Quantidade", option = "text" },
            {
                label = "Tipo",
                option = "dropdown",
                data = {
                    { label = "Dinheiro",   value = "cash" },
                    { label = "Banco",   value = "bank" },
                    { label = "Cripto", value = "crypto" },
                },
            },
            { label = "Confirmar", option = "button", type = "server", event = "ps-adminmenu:server:GiveMoney" },
        },
    },

    ["give_money_all"] = {
        label = "Dar Dinheiro para Todos",
        perms = "admin",
        dropdown = {
            { label = "Quantidade",  option = "text" },
            {
                label = "Tipo",
                option = "dropdown",
                data = {
                    { label = "Dinheiro",   value = "cash" },
                    { label = "Banco",   value = "bank" },
                    { label = "Cripto", value = "crypto" },
                },
            },
            { label = "Confirmar", option = "button", type = "server", event = "ps-adminmenu:server:GiveMoneyAll" },
        },
    },

    ["remove_money"] = {
        label = "Remover Dinheiro",
        perms = "admin",
        dropdown = {
            { label = "Jogador", option = "dropdown", data = "players" },
            { label = "Quantidade", option = "text" },
            {
                label = "Tipo",
                option = "dropdown",
                data = {
                    { label = "Dinheiro", value = "cash" },
                    { label = "Banco", value = "bank" },
                },
            },
            { label = "Confirmar", option = "button", type = "server", event = "ps-adminmenu:server:TakeMoney" },
        },
    },

    ["give_item"] = {
        label = "Dar Item",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Item",    option = "dropdown", data = "items" },
            { label = "Quantidade",  option = "text" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:GiveItem" },
        },
    },

    ["give_item_all"] = {
        label = "Dar Item para Todos",
        perms = "mod",
        dropdown = {
            { label = "Item",    option = "dropdown", data = "items" },
            { label = "Quantidade",  option = "text" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:GiveItemAll" },
        },
    },

    ["spawn_vehicle"] = {
        label = "Spawnar Veículo",
        perms = "mod",
        dropdown = {
            { label = "Veículo", option = "dropdown", data = "vehicles" },
            { label = "Confirmar", option = "button",   type = "client",  event = "ps-adminmenu:client:SpawnVehicle" },
        },
    },

    ["fix_vehicle"] = {
        label = "Consertar Veículo",
        type = "command",
        event = "fix",
        perms = "mod",
    },

    ["fix_vehicle_for"] = {
        label = "Consertar Veículo para Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:FixVehFor" },
        },
    },

    ["spectate_player"] = {
        label = "Espectar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:SpectateTarget" },
        },
    },

    ["telport_to_player"] = {
        label = "Teleportar para Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:TeleportToPlayer" },
        },
    },

    ["telport_to_coords"] = {
        label = "Teleportar para Coordenadas",
        perms = "mod",
        dropdown = {
            { label = "Coordenadas",  option = "text" },
            { label = "Confirmar", option = "button", type = "client", event = "ps-adminmenu:client:TeleportToCoords" },
        },
    },

    ["teleport_to_location"] = {
        label = "Teleportar para Localização",
        perms = "mod",
        dropdown = {
            { label = "Localização", option = "dropdown", data = "locations" },
            { label = "Confirmar",  option = "button",   type = "client",   event = "ps-adminmenu:client:TeleportToLocation" },
        },
    },

    ["teleport_to_marker"] = {
        label = "Teleportar para Marcador",
        type = "command",
        event = "tpm",
        perms = "mod",
    },

    ["teleport_back"] = {
        label = "Teleportar de Volta",
        type = "client",
        event = "ps-adminmenu:client:TeleportBack",
        perms = "mod",
    },

    ["vehicle_dev"] = {
        label = "Menu Dev de Veículo",
        type = "client",
        event = "ps-adminmenu:client:ToggleVehDevMenu",
        perms = "mod",
    },

    ["toggle_coords"] = {
        label = "Alternar Coordenadas",
        type = "client",
        event = "ps-adminmenu:client:ToggleCoords",
        perms = "mod",
    },

    ["toggle_blips"] = {
        label = "Alternar Blips",
        type = "client",
        event = "ps-adminmenu:client:toggleBlips",
        perms = "mod",
    },

    ["toggle_names"] = {
        label = "Alternar Nomes",
        type = "client",
        event = "ps-adminmenu:client:toggleNames",
        perms = "mod",
    },

    ["toggle_cuffs"] = {
        label = "Alternar Algemas",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:CuffPlayer" },
        },
    },

    ["max_mods"] = {
        label = "Max Modificações Veículo",
        type = "client",
        event = "ps-adminmenu:client:maxmodVehicle",
        perms = "mod",
    },

    ["warn_player"] = {
        label = "Avisar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Motivo",  option = "text" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:WarnPlayer" },
        },
    },

    ["infinite_ammo"] = {
        label = "Munição Infinita",
        type = "client",
        event = "ps-adminmenu:client:setInfiniteAmmo",
        perms = "mod",
    },

    ["kick_player"] = {
        label = "Expulsar Jogador",
        perms = "mod",
        dropdown = {
            { label = "Jogador",  option = "dropdown", data = "players" },
            { label = "Motivo",  option = "text" },
            { label = "Confirmar", option = "button",   type = "server", event = "ps-adminmenu:server:KickPlayer" },
        },
    },


    ["play_sound"] = {
        label = "Tocar Som",
        perms = "mod",
        dropdown = {
            { label = "Jogador",     option = "dropdown", data = "players" },
            {
                label = "Som",
                option = "dropdown",
                data = {
                    { label = "Alerta",      value = "alert" },
                    { label = "Algema",       value = "cuff" },
                    { label = "Chave de Impacto", value = "airwrench" },
                },
            },
            { label = "Tocar Som", option = "button",   type = "client", event = "ps-adminmenu:client:PlaySound" },
        },
    },
}

Config.PlayerActions = {
    ["teleportToPlayer"] = {
        label = "Teleportar para Jogador",
        type = "server",
        event = "ps-adminmenu:server:TeleportToPlayer",
        perms = "mod",
    },
    ["bringPlayer"] = {
        label = "Puxar Jogador",
        type = "server",
        event = "ps-adminmenu:server:BringPlayer",
        perms = "mod",
    },
    ["revivePlayer"] = {
        label = "Reanimar Jogador",
        event = "ps-adminmenu:server:Revive",
        perms = "mod",
        type = "server"
    },
    ["spawnPersonalVehicle"] = {
        label = "Spawnar Veículo Pessoal",
        event = "ps-adminmenu:server:SpawnPersonalVehicle",
        perms = "mod",
        type = "client"
    },
    ["banPlayer"] = {
        label = "Banir Jogador",
        event = "ps-adminmenu:server:BanPlayer",
        perms = "mod",
        type = "server"
    },
    ["kickPlayer"] = {
        label = "Expulsar Jogador",
        event = "ps-adminmenu:server:KickPlayer",
        perms = "mod",
        type = "server"
    }
}

Config.OtherActions = {
    ["toggleDevmode"] = {
        type = "client",
        event = "ps-adminmenu:client:ToggleDev",
        perms = "admin",
        label = "Toggle Devmode"
    }
}

AddEventHandler("onResourceStart", function()
    Wait(100)
    if GetResourceState('ox_inventory') == 'started' then
        Config.Inventory = 'ox_inventory'
    elseif GetResourceState('ps-inventory') == 'started' then
        Config.Inventory = 'ps-inventory'
    elseif GetResourceState('lj-inventory') == 'started' then
        Config.Inventory = 'lj-inventory'
    elseif GetResourceState('ps-inventory') == 'started' then
        Config.Inventory = 'ps-inventory'
    end
end)
