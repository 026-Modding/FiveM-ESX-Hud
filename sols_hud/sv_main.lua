ESX = exports["es_extended"]:getSharedObject()

local playerStatuses = {}

RegisterServerEvent('esx_status:update')
AddEventHandler('esx_status:update', function(status)
    local src = source
    playerStatuses[src] = status
end)

ESX.RegisterServerCallback('esx_status:getStatus', function(source, cb)
    local status = playerStatuses[source] or {
        { name = 'hunger', percent = 100 },
        { name = 'thirst', percent = 100 }
    }
    cb(status)
end)
