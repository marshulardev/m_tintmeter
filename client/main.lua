local tints <const> = require 'data.tints'
local display = false

lib.locale()

---Use function
local function use()
    if display then return end
    local coords = GetEntityCoords(cache.ped)
    local closestVehicle, closestVehicleCoords = lib.getClosestVehicle(coords, 5, false)
    local vehicle = cache.vehicle or closestVehicle

    if not vehicle then return lib.notify({title = locale('notification.title'), description = locale('notification.no_vehicle'), type = 'error'}) end
    
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "ui",
        tint = tints[tonumber(GetVehicleWindowTint(vehicle))],
    })
    
    display = true
end

exports('use', use)

RegisterNUICallback('exit', function()
    SetNuiFocus(false, false)
    display = false
end)