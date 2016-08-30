if LargeChest == '1' then
	local large_chest_formspec =
		"size[13,11]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[current_name;main;0,0.3;13,6;]" ..
		"list[current_player;main;2.5,6.85;8,1;]" ..
		"list[current_player;main;2.5,8.08;8,3;8]" ..
		"listring[current_name;main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(2.5,6.85)

	minetest.register_node("mcnodes:large_chest", {
		description = "Large chest",
		drawtype = "mesh",
		mesh = "mcnodes_large_chest.obj",
		tiles = {"mcnodes_large_chest.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = "1",
		drop = {
			max_items = 2,
			items = {
				{items = {'default:chest'}},
				{items = {'default:chest'}}
			}
		},
		selection_box = {type = "fixed", fixed = {1.36, 0.357, 0.415, -0.359, -0.50, -0.44}},
		collision_box = {type = "fixed", fixed = {1.36, 0.357, 0.415, -0.359, -0.50, -0.44}},
	
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", large_chest_formspec)
			meta:set_string("infotext", "Large chest")
			local inv = meta:get_inventory()
			inv:set_size("main", 13*11)
		end,
	
		can_dig = function(pos,player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("main")
		end,
	
		on_blast = function(pos)
			local drops = {}
			default.get_inventory_drops(pos, "main", drops)
			drops[#drops+1] = "default:chest"
			minetest.remove_node(pos)
			return drops
		end,
		--collision_box = {type = "fixed", fixed = {0.5, 0.5, 0.5, -0.5, -0.51, -1.5}},
	})

	minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
		placer_pos = placer:getpos()
		if newnode.name == "default:chest" then
			local node = minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z})
			lookdir = placer:get_look_dir()
			facedir = minetest.dir_to_facedir(lookdir)
		
			if minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name == "default:chest" or minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name == "default:chest" or minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name == "default:chest" or minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name == "default:chest" then
				done = '0'
			
				if done == '0' then
					oldnodepos = {x=pos.x+1, y=pos.y, z=pos.z}
					if minetest.get_node_or_nil(oldnodepos).name == "default:chest" then
						MainNodeOn = 'XP'
						
						if PlaceChest('XP', pos, oldnodepos) == true then
							minetest.remove_node(oldnodepos)
							minetest.remove_node(pos)
							
							if placer_pos.z < pos.z then
								minetest.set_node(pos, {name="mcnodes:large_chest", param2 = facedir})
							else
								minetest.set_node(oldnodepos, {name="mcnodes:large_chest", param2 = facedir})
							end
							
							done = '1'
						end
					end
				end
			
				if done == '0' then
					oldnodepos = {x=pos.x, y=pos.y, z=pos.z+1}
					if minetest.get_node_or_nil(oldnodepos).name == "default:chest" then
						MainNodeOn = 'ZP'
						
						if PlaceChest('ZP', pos, oldnodepos) == true then
							minetest.remove_node(oldnodepos)
							minetest.remove_node(pos)
					
							if placer_pos.x < pos.x then
								minetest.set_node(oldnodepos, {name="mcnodes:large_chest", param2 = facedir})
							else
								minetest.set_node(pos, {name="mcnodes:large_chest", param2 = facedir})
							end
					
							done = '1'
						end
					end
				end
			
				if done == '0' then
					oldnodepos = {x=pos.x-1, y=pos.y, z=pos.z}
					if minetest.get_node_or_nil(oldnodepos).name == "default:chest" then
						MainNodeOn = 'XN'
						
						if PlaceChest('XN', pos, oldnodepos) == true then
							minetest.remove_node(oldnodepos)
							minetest.remove_node(pos)
							if placer_pos.z > pos.z then
								minetest.set_node(pos, {name="mcnodes:large_chest", param2 = facedir})
							else
								minetest.set_node(oldnodepos, {name="mcnodes:large_chest", param2 = facedir})
							end
					
							done = '1'
						end
					end
				end
			
				if done == '0' then
					oldnodepos = {x=pos.x, y=pos.y, z=pos.z-1}
					if minetest.get_node_or_nil(oldnodepos).name == "default:chest" then
						MainNodeOn = 'ZN'
						
						if PlaceChest('ZN', pos, oldnodepos) == true then
							minetest.remove_node(oldnodepos)
							minetest.remove_node(pos)
							
							if placer_pos.x > pos.x then
								minetest.set_node(oldnodepos, {name="mcnodes:large_chest", param2 = facedir})
							else
								minetest.set_node(pos, {name="mcnodes:large_chest", param2 = facedir})
							end
						
							done = '1'
						end
					end
				end
			
				--minetest.chat_send_all('State: ' .. MainNodeOn)
			end
		end
		--minetest.chat_send_all('Y-axis: ' .. getNodeYaxis(pos))
	end)
end
