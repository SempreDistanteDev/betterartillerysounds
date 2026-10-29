--require('__debugadapter__/debugadapter.lua')

function dist_a_b(PositionA, PositionB)
    return math.sqrt((PositionB.x - PositionA.x)^2+(PositionB.y-PositionA.y)^2)
end

script.on_event(defines.events.on_trigger_created_entity, function(event)
    local ent = event.entity

    if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" or ent.name == "vtk-artillery-at-distance-sound-trigger-explosion"
        or ent.name == "vtk-artillery-at-distance-sound-trigger-shooting-mod" or ent.name == "vtk-artillery-at-distance-sound-trigger-explosion-mod"
        or ent.name == "vtk-artillery-at-distance-sound-trigger-nuke-mod" then
        local dist = 0
        for _, player in pairs(game.connected_players) do
            if player.surface.valid and player.surface == ent.surface then
            local multiplier = settings.get_player_settings(player.index)["range-multiplier"].value
            dist = dist_a_b(player.position, ent.position)
            if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" or ent.name == "vtk-artillery-at-distance-sound-trigger-shooting-mod" and settings.get_player_settings(player.index)["for-modded-artillery-too"].value then
                if dist > 20 and dist < 40 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist1", position = player.position }
                elseif dist < 100 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist2", position = player.position }
                elseif dist < 200 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist3", position = player.position }
                elseif dist < 400 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist4", position = player.position }
                elseif dist < 700 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist5", position = player.position }
                elseif dist < 1000 * multiplier then
                    player.surface.play_sound { path = "bas_shoot_dist6", position = player.position }
                end
            end
            if ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" or ent.name == "vtk-artillery-at-distance-sound-trigger-explosion-mod" and settings.get_player_settings(player.index)["for-modded-artillery-too"].value then
                if dist > 20 and dist < 40 * multiplier then
                    player.surface.play_sound { path = "bas_explosion1", position = player.position }
                elseif dist < 100 * multiplier then
                    player.surface.play_sound { path = "bas_explosion2", position = player.position }
                elseif dist < 200 * multiplier then
                    player.surface.play_sound { path = "bas_explosion3", position = player.position }
                elseif dist < 400 * multiplier then
                    player.surface.play_sound { path = "bas_explosion4", position = player.position }
                elseif dist < 700 * multiplier then
                    player.surface.play_sound { path = "bas_explosion5", position = player.position }
                elseif dist < 1000 * multiplier then
                    player.surface.play_sound { path = "bas_explosion6", position = player.position }
                end
            end
            if ent.name == "vtk-artillery-at-distance-sound-trigger-nuke-mod" and settings.get_player_settings(player.index)["for-modded-artillery-too"].value then
                if dist > 20 and dist < 40 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist1", position = player.position }
                elseif dist < 100 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist2", position = player.position }
                elseif dist < 200 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist3", position = player.position }
                elseif dist < 400 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist4", position = player.position }
                elseif dist < 700 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist5", position = player.position }
                elseif dist < 1000 * multiplier then
                    player.surface.play_sound { path = "bas_nuke_dist6", position = player.position }
                end
            end
        end
    end
end
end)
