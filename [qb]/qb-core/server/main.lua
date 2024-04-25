QBCore = {}
QBCore.Config = QBConfig
QBCore.Shared = QBShared
QBCore.ClientCallbacks = {}
QBCore.ServerCallbacks = {}

exports('GetCoreObject', function()
    return QBCore
end)

-- - usar esta exportação em um script em vez de manifesto método
-- - Basta colocar esta linha de código abaixo no topo do script
-- -qbcore local = exportações ['qb-core']: getCoreObject ()
