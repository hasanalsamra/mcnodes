function McNodesGetMainStairNode(pos)
	nodeName = minetest.get_node_or_nil(pos).name
	if string.find(nodeName, '_outer') ~= nil then
		node = string.gsub(nodeName, '_outer', '')
	elseif string.find(nodeName, '_inner') ~= nil then
		node = string.gsub(nodeName, '_inner', '')
	end
	
	return node
end

function McNodesAddInnerOrOuterName(pos, mode)
	nodeName = minetest.get_node_or_nil(pos).name
	if string.find(nodeName, 'mcnodes:') == 1 then
		node = minetest.get_node_or_nil(pos).name .. '_' .. mode
	else
		local NumToRemove = string.find(nodeName, ':')
		node = 'mcnodes:' .. string.sub(nodeName, NumToRemove+1) .. '_' .. mode
	end
	
	return node
end

function RegisterAlias(NodeName, FullStairNodeName)
	minetest.register_alias('mcnodes:stair_' .. string.lower(NodeName), FullStairNodeName)
end

function SetMcNodesAutoStairs(NodeName, FullStairNodeName, Tiles)
	InnerStairNodeName = "mcnodes:stair_" .. string.lower(NodeName) .. "_inner"
	OuterStairNodeName = "mcnodes:stair_" .. string.lower(NodeName) .. "_outer"
	
	minetest.register_node("mcnodes:stair_" .. string.lower(NodeName) .. "_outer", {
		description = NodeName .. " outer stair",
		drawtype = "nodebox",
		tiles = Tiles,
		groups = {outerstair = 1, cracky = 3, not_in_creative_inventory = 1},
		drop = FullStairNodeName,
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5},{0, 0, 0, -0.5, 0.5, 0.5},},
		},
	})
	
	minetest.register_node("mcnodes:stair_" .. string.lower(NodeName) .. "_inner", {
		description = NodeName .. " inner stair",
		drawtype = "nodebox",
		tiles = Tiles,
		groups = {innerstair = 1, cracky = 3, not_in_creative_inventory = 1},
		drop = FullStairNodeName,
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5},{-0.5, 0, 0, 0.5, 0.5, 0.5},{0, -0.5, -0.5, -0.5, 0.5, 0.5},},
		},
	})
	
	if string.find(FullStairNodeName, 'mcnodes:') == nil then
		RegisterAlias(NodeName, FullStairNodeName)
	end
end

function McNodesSetStairNode(pos, node, secparam)
	if McNodesCheckNode(node) ~= false then
		if secparam == (nil or '') then
			return minetest.set_node(pos, {name=node})
		else
			return minetest.set_node(pos, {name=node, param2 = secparam})
		end
	else
		return false
	end
end

function CheckAutoStair(pos)
	if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'innerstair') == 1 or minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'outerstair') == 1 then
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'outerstair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '1'})
		elseif minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'innerstair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '3'})
		end
	end

	if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'innerstair') == 1 or minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'outerstair') == 1 then
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'outerstair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z+1}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '2'})
		elseif minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'innerstair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z+1}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '0'})
		end
	end

	if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'innerstair') == 1 or minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'outerstair') == 1 then
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'outerstair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '3'})
		elseif minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'innerstair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '1'})
		end
	end

	if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'innerstair') == 1 or minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'outerstair') == 1 then
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'outerstair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z-1}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '0'})
		elseif minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'innerstair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z-1}
			minetest.set_node(newpos, {name=McNodesGetMainStairNode(newpos), param2 = '2'})
		end
	end
end

minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
	if minetest.get_node_group(newnode.name, 'stair') == 1 then
		--minetest.chat_send_all('F-Rotation: ' .. getNodeFRotation(pos) .. ' Y-axis: ' .. getNodeYaxis(pos))
		done = 0
		
		-- Inner
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			if getNodeYaxis(newpos) == '180' and getNodeYaxis(pos) == '90' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'))
			elseif getNodeYaxis(newpos) == '180' and getNodeYaxis(pos) == '270' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 3)
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(pos) == '0' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 1)
			elseif getNodeYaxis(newpos) == '90' and getNodeYaxis(pos) == '180' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 0)
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			if getNodeYaxis(newpos) == '0' and getNodeYaxis(pos) == '270' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 2)
			elseif getNodeYaxis(newpos) == '0' and getNodeYaxis(pos) == '90' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 1)
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(pos) == '180' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 3)
			elseif getNodeYaxis(newpos) == '270' and getNodeYaxis(pos) == '0' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'inner'), 2)
			end
		end
		
		-- Outer
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			if getNodeYaxis(newpos) == '0' and getNodeYaxis(pos) == '270' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 2)
			elseif getNodeYaxis(newpos) == '0' and getNodeYaxis(pos) == '90' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 1)
			end
		end
		
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(pos) == '0' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 2)
			elseif getNodeYaxis(newpos) == '270' and getNodeYaxis(pos) == '180' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 3)
			end
		end
		
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			if getNodeYaxis(newpos) == '180' and getNodeYaxis(pos) == '90' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 0)
			elseif getNodeYaxis(newpos) == '180' and getNodeYaxis(pos) == '270' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 3)
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(pos) == '0' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 1)
			elseif getNodeYaxis(newpos) == '90' and getNodeYaxis(pos) == '180' then
				McNodesSetStairNode(newpos, McNodesAddInnerOrOuterName(newpos, 'outer'), 0)
			end
		end
		
		-- Change to outer or inner directly after place
		
		-- State 1
		-- Inner
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			local zmonewpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(zmonewpos) == '0' and (getNodeYaxis(pos) == '0' or getNodeYaxis(pos) == '90') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 1)
				done = 1
			end
		end
		
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			local zmonewpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(zmonewpos) == '180' and (getNodeYaxis(pos) == '180' or getNodeYaxis(pos) == '90') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 0)
				done = 1
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			local zponewpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(zponewpos) == '180' and (getNodeYaxis(pos) == '180' or getNodeYaxis(pos) == '270') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 3)
				done = 1
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			local zponewpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(zponewpos) == '0' and (getNodeYaxis(pos) == '0' or getNodeYaxis(pos) == '270') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 2)
				done = 1
			end
		end
		
		-- Outer
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			local zmonewpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(zmonewpos) == '180' and (getNodeYaxis(pos) == '180' or getNodeYaxis(pos) == '270') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 3)
				done = 1
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			local zmonewpos = {x=pos.x, y=pos.y, z=pos.z-1}
			if getNodeYaxis(newpos) == '270' and getNodeYaxis(zmonewpos) == '0' and (getNodeYaxis(pos) == '0' or getNodeYaxis(pos) == '270') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 2)
				done = 1
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
			local zponewpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(zponewpos) == '0' and (getNodeYaxis(pos) == '0' or getNodeYaxis(pos) == '90') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 1)
				done = 1
			end
		end
	
		if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 and minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
			local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
			local zponewpos = {x=pos.x, y=pos.y, z=pos.z+1}
			if getNodeYaxis(newpos) == '90' and getNodeYaxis(zponewpos) == '180' and (getNodeYaxis(pos) == '180' or getNodeYaxis(pos) == '90') then
				McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 0)
				done = 1
			end
		end
		
		-- State 2
		-- Outer/Inner
		if done ~= 1 then
			if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x-1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
				local newpos = {x=pos.x-1, y=pos.y, z=pos.z}
				if getNodeYaxis(pos) == '180' and getNodeYaxis(newpos) == '270' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 3)
				elseif getNodeYaxis(pos) == '0' and getNodeYaxis(newpos) == '270' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 2)
				elseif getNodeYaxis(pos) == '180' and getNodeYaxis(newpos) == '90' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 0)
				elseif getNodeYaxis(pos) == '0' and getNodeYaxis(newpos) == '90' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 1)
				end
			end
			
			if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x+1, y=pos.y, z=pos.z}).name, 'stair') == 1 then
				local newpos = {x=pos.x+1, y=pos.y, z=pos.z}
				if getNodeYaxis(pos) == '0' and getNodeYaxis(newpos) == '270' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 2)
				elseif getNodeYaxis(pos) == '180' and getNodeYaxis(newpos) == '270' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 3)
				elseif getNodeYaxis(pos) == '0' and getNodeYaxis(newpos) == '90' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 1)
				elseif getNodeYaxis(pos) == '180' and getNodeYaxis(newpos) == '90' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 0)
				end
			end
		
			if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z-1}).name, 'stair') == 1 then
				local newpos = {x=pos.x, y=pos.y, z=pos.z-1}
				if getNodeYaxis(pos) == '270' and getNodeYaxis(newpos) == '180' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 3)
				elseif getNodeYaxis(pos) == '90' and getNodeYaxis(newpos) == '180' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 0)
				elseif getNodeYaxis(pos) == '270' and getNodeYaxis(newpos) == '0' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 2)
				elseif getNodeYaxis(pos) == '90' and getNodeYaxis(newpos) == '0' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 1)
				end
			end
		
			if minetest.get_node_group(minetest.get_node_or_nil({x=pos.x, y=pos.y, z=pos.z+1}).name, 'stair') == 1 then
				local newpos = {x=pos.x, y=pos.y, z=pos.z+1}
				if getNodeYaxis(pos) == '90' and getNodeYaxis(newpos) == '180' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 0)
				elseif getNodeYaxis(pos) == '270' and getNodeYaxis(newpos) == '180' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 3)
				elseif getNodeYaxis(pos) == '90' and getNodeYaxis(newpos) == '0' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'outer'), 1)
				elseif getNodeYaxis(pos) == '270' and getNodeYaxis(newpos) == '0' then
					McNodesSetStairNode(pos, McNodesAddInnerOrOuterName(pos, 'inner'), 2)
				end
			end
		end
	end
end)

minetest.register_on_dignode(function(pos, oldnode, digger)
	if minetest.get_node_group(oldnode.name, 'stair') == 1 then
		CheckAutoStair(pos)
	end
end)
