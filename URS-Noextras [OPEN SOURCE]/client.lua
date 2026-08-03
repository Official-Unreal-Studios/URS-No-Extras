local supportedModels = {}

for _, modelName in ipairs(Config.VehicleModels) do
    supportedModels[joaat(modelName)] = true
end

local function disableVehicleExtras(vehicle)
    if not DoesEntityExist(vehicle) then
        return
    end

    if not supportedModels[GetEntityModel(vehicle)] then
        return
    end

    for extraId = Config.ExtraRange.min, Config.ExtraRange.max do
        if DoesExtraExist(vehicle, extraId) and IsVehicleExtraTurnedOn(vehicle, extraId) then
            SetVehicleExtra(vehicle, extraId, true)
        end
    end
end

CreateThread(function()
    while true do
        Wait(Config.CheckInterval)

        for _, vehicle in ipairs(GetGamePool('CVehicle')) do
            disableVehicleExtras(vehicle)
        end
    end
end)
