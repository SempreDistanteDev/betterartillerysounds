-- insert sound triggers in artillery-projectile explosion creation and artillery ammo shooting muzzle creation
-- 
--require('__debugadapter__/debugadapter.lua')


--4 effects will be created, 2 for firing the ammo, and 2 for the explosions. 
--The ones that end with "_mod" are used to be separated at runtime, to check against the mod setting set by the player. If he want to replace modded artillery ammo/firing sound too.

effect_trigger_explosion = {
    type = "create-entity",
    entity_name = "vtk-artillery-at-distance-sound-trigger-explosion",
    trigger_created_entity = true
}

effect_trigger_shooting = {
    type = "create-entity",
    entity_name = "vtk-artillery-at-distance-sound-trigger-shooting",
    trigger_created_entity = true
}

effect_trigger_explosion_mod = {
    type = "create-entity",
    entity_name = "vtk-artillery-at-distance-sound-trigger-explosion-mod",
    trigger_created_entity = true
}

effect_trigger_nuke_mod = {
    type = "create-entity",
    entity_name = "vtk-artillery-at-distance-sound-trigger-nuke-mod",
    trigger_created_entity = true
}

effect_trigger_shooting_mod = {
    type = "create-entity",
    entity_name = "vtk-artillery-at-distance-sound-trigger-shooting-mod",
    trigger_created_entity = true
}

for projectile_index, projectile_value in pairs(data.raw["artillery-projectile"]) do
    if projectile_value.action and projectile_value.action.action_delivery then
        local target_effects = projectile_value.action.action_delivery.target_effects

        -- Ensure target_effects exists and is a table
        if not target_effects then
            target_effects = {}
            projectile_value.action.action_delivery.target_effects = target_effects
        end

        if projectile_index == "artillery-projectile" then
            -- Add explosion trigger for standard artillery projectiles
            table.insert(target_effects, effect_trigger_explosion)
        elseif projectile_index:find("atomic") then
            -- Add nuke explosion trigger for atomic artillery projectiles
            table.insert(target_effects, effect_trigger_nuke_mod)
        else
            -- Add explosion mod for other artillery projectiles
            table.insert(target_effects, effect_trigger_explosion_mod)
        end
    elseif projectile_value.action then
        -- Handle multiple deliveries
        for _, action in pairs(projectile_value.action) do
            if action.action_delivery and action.action_delivery.target_effects then
                local target_effects = action.action_delivery.target_effects
                if not target_effects then
                    target_effects = {}
                    projectile_value.action.action_delivery.target_effects = target_effects
                end
                if projectile_index:find("atomic") then
                    table.insert(target_effects, effect_trigger_nuke_mod)
                else
                    table.insert(target_effects, effect_trigger_explosion_mod)
                end
            end
        end
    end
end



for ammo_name, ammo_value in pairs(data.raw["ammo"]) do
    if ammo_value.ammo_type and ammo_value.ammo_type.action and ammo_value.ammo_type.action.action_delivery then
        if ammo_name == "artillery-shell" or ammo_name:find("artillery") then
            local source_effects = ammo_value.ammo_type.action.action_delivery.source_effects

            -- Ensure source_effects is a table
            if not source_effects then
                ammo_value.ammo_type.action.action_delivery.source_effects = {}
                source_effects = ammo_value.ammo_type.action.action_delivery.source_effects
            elseif not source_effects[1] then
                ammo_value.ammo_type.action.action_delivery.source_effects = { source_effects }
                source_effects = ammo_value.ammo_type.action.action_delivery.source_effects
            end

            if ammo_name == "artillery-shell" then
                -- Add shooting effect for standard artillery shells
                table.insert(source_effects, effect_trigger_shooting)
                log("Added effect to standard artillery shell")
            elseif ammo_name:find("artillery") then
                -- Add shooting effect mod for custom artillery shells
                table.insert(source_effects, effect_trigger_shooting_mod)
                log("Added effect to custom artillery shell")
            end
        end
    end
end

local ammo_name = "artillery-shell"
local ammo_prototype = data.raw["ammo"][ammo_name]
if ammo_prototype then
    log("Debug: Ammo prototype logged to log file!")
    log(serpent.block(ammo_prototype))
else
    log("Ammo prototype '" .. ammo_name .. "' not found!")
end