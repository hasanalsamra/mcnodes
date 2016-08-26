if ChangeChest == '1' then
	local chest_formspec =
		"size[8,9]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[current_name;main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_name;main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)

	minetest.register_node(":default:chest", {
		description = "Chest",
		drawtype = "mesh",
		mesh = "mcnodes_default_chest.obj",
		tiles = {"mcnodes_default_chest.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {choppy = 2, oddly_breakable_by_hand = 2},
		legacy_facedir_simple = true,
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
	
		selection_box = {type = "fixed", fixed = {0.43, 0.357, 0.457, -0.43, -0.499, -0.403}},
	
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", chest_formspec)
			meta:set_string("infotext", "Chest")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
		end,
		can_dig = function(pos,player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("main")
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index,
				to_list, to_index, count, player)
			minetest.log("action", player:get_player_name() ..
				" moves stuff in chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" moves " .. stack:get_name() ..
				" to chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" takes " .. stack:get_name() ..
				" from chest at " .. minetest.pos_to_string(pos))
		end,
		on_blast = function(pos)
			local drops = {}
			default.get_inventory_drops(pos, "main", drops)
			drops[#drops+1] = "default:chest"
			minetest.remove_node(pos)
			return drops
		end,
	})
end
