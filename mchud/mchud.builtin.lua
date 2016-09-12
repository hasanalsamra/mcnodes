HUD_SB_SIZE = {x = 24, y = 24}

HUD_AIR_POS = {x = 0.5, y = 1}
HUD_AIR_OFFSET = {x = 15, y = -87}

HUD_HEALTH_POS = {x = 0.5,y = 1}
HUD_HEALTH_OFFSET = {x = -262, y = -87}

local damage = minetest.setting_getbool("enable_damage")

if damage then
	mchud.register("health", {
		hud_elem_type = "statbar",
		position = HUD_HEALTH_POS,
		size = HUD_SB_SIZE,
		text = "mcnodes_hud_heart.png",
		number = 20,
		alignment = {x = -1, y = -1},
		offset = HUD_HEALTH_OFFSET,
		background = "mcnodes_hud_heart_fg.png",
		events = {
			{
				type = "damage",
				func = function(player)
					mchud.change_item(player, "health", {number = player:get_hp()})
				end
			}
		},
	})
	
	mchud.register("air", {
		hud_elem_type = "statbar",
		position = HUD_AIR_POS,
		size = HUD_SB_SIZE,
		text = "mcnodes_mchud_air_fg.png",
		number = 0,
		alignment = {x = -1, y = -1},
		offset = HUD_AIR_OFFSET,
		background = nil,
		events = {
			{
				type = "breath",
				func = function(player)
					local air = player:get_breath()
					if air > 10 then
						air = 0
					end
					mchud.change_item(player, "air", {number = air * 2})
				end
		 	}
		},
    })
end
