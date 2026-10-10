local friction_multiplier   = settings.startup["car-friction-multiplier"].value
local braking_multiplier   = settings.startup["car-braking-multiplier"].value

local function main()
    local car = data.raw["car"]["car"]
    if not car then return end

    car.friction_force = car.friction_force / friction_multiplier / friction_multiplier
    -- car.acceleration = car.acceleration * braking_multiplier

    car.braking_force = car.braking_force * braking_multiplier
end

main()