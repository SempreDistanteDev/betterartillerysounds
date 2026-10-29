-- declare trigger entities and sound at distance entities to be spawned
-- 
data:extend({
    {
      type = "explosion",
      name = "vtk-artillery-at-distance-sound-trigger-shooting",
      flags = {"not-on-map"},
      animations = {
        {
          filename = "__betterartillerysounds-updated__/graphics/dummy.png",
          priority = "low",
          width = 32,
          height = 32,
          frame_count = 1,
          line_length = 1,
          animation_speed = 1
        },
      },
      light = {intensity = 0, size = 0},
    }, 
    {
      type = "explosion",
      name = "vtk-artillery-at-distance-sound-trigger-explosion",
      flags = {"not-on-map"},
      animations = {
        {
          filename = "__betterartillerysounds-updated__/graphics/dummy.png",
          priority = "low",
          width = 32,
          height = 32,
          frame_count = 1,
          line_length = 1,
          animation_speed = 1
        },
      },
      light = {intensity = 0, size = 0},
    }, 
    {
        type = "explosion",
        name = "vtk-artillery-at-distance-sound-trigger-shooting-mod",
        flags = {"not-on-map"},
        animations = {
          {
            filename = "__betterartillerysounds-updated__/graphics/dummy.png",
            priority = "low",
            width = 32,
            height = 32,
            frame_count = 1,
            line_length = 1,
            animation_speed = 1
          },
        },
        light = {intensity = 0, size = 0},
    }, 
    {
        type = "explosion",
        name = "vtk-artillery-at-distance-sound-trigger-explosion-mod",
        flags = {"not-on-map"},
        animations = {
          {
            filename = "__betterartillerysounds-updated__/graphics/dummy.png",
            priority = "low",
            width = 32,
            height = 32,
            frame_count = 1,
            line_length = 1,
            animation_speed = 1
          },
        },
        light = {intensity = 0, size = 0},
    }, 
    {
        type = "explosion",
        name = "vtk-artillery-at-distance-sound-trigger-nuke-mod",
        flags = {"not-on-map"},
        animations = {
          {
            filename = "__betterartillerysounds-updated__/graphics/dummy.png",
            priority = "low",
            width = 32,
            height = 32,
            frame_count = 1,
            line_length = 1,
            animation_speed = 1
          },
        },
        light = {intensity = 0, size = 0},
    }, 
    {type = "sound", name = "bas_shoot_dist1", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist1_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist1_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_shoot_dist2", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist2_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist2_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_shoot_dist3", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist3_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist3_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_shoot_dist4", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist4_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist4_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_shoot_dist5", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist5_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist5_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_shoot_dist6", variations={{filename = "__betterartillerysounds-updated__/sounds/shoot_dist6_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/shoot_dist6_var2.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_explosion1", filename = "__betterartillerysounds-updated__/sounds/explosion_dist1.ogg", volume = 1}, 
    {type = "sound", name = "bas_explosion2", filename = "__betterartillerysounds-updated__/sounds/explosion_dist2.ogg", volume = 1}, 
    {type = "sound", name = "bas_explosion3", filename = "__betterartillerysounds-updated__/sounds/explosion_dist3.ogg", volume = 1}, 
    {type = "sound", name = "bas_explosion4", filename = "__betterartillerysounds-updated__/sounds/explosion_dist4.ogg", volume = 1}, 
    {type = "sound", name = "bas_explosion5", filename = "__betterartillerysounds-updated__/sounds/explosion_dist5.ogg", volume = 1}, 
    {type = "sound", name = "bas_explosion6", filename = "__betterartillerysounds-updated__/sounds/explosion_dist6.ogg", volume = 1}, 
    {type = "sound", name = "bas_nuke_dist1", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist1_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist1_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist1_var3.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_nuke_dist2", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist2_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist2_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist2_var3.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_nuke_dist3", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist3_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist3_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist3_var3.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_nuke_dist4", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist4_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist4_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist4_var3.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_nuke_dist5", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist5_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist5_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist5_var3.ogg", volume = 1}}}, 
    {type = "sound", name = "bas_nuke_dist6", variations={{filename = "__betterartillerysounds-updated__/sounds/nuke_dist6_var1.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist6_var2.ogg", volume = 1},{filename = "__betterartillerysounds-updated__/sounds/nuke_dist6_var3.ogg", volume = 1}}}, 
  })
  