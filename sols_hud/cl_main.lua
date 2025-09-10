ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local ped = PlayerPedId() -- Get the player's Ped
        local healthRaw = GetEntityHealth(ped) -- Get Raw Health
        local health = math.max(0, math.min(100, healthRaw - 100)) -- Normalize Health
        local armor = GetPedArmour(ped) -- Get Armor of Player 

        ESX.TriggerServerCallback('esx_status:getStatus', function(statuses)
            local hunger, thirst = 100, 100
            for i=1, #statuses, 1 do
                if statuses[i].name == 'hunger' then
                    hunger = statuses[i].percent
                elseif statuses[i].name == 'thirst' then
                    thirst = statuses[i].percent
                end
            end

            SendNUIMessage({
                type = "updateHud",
                health = health,
                armor = armor,
                hunger = hunger,
                thirst = thirst
            })
        end)
    end
end)
