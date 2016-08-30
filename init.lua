mcnodes = {}

mcnodes.version = '0.3-beta'

LargeChest = '1'

AutoStairs = '1'

McMobs = '1'
McMobsInCreative = '0'

McHud = '1'

McHunger = '1'
McHungerInCreative = '1'

dofile(minetest.get_modpath("mcnodes").."/functions.general.lua")

dofile(minetest.get_modpath("mcnodes").."/nodes.lua")

dofile(minetest.get_modpath("mcnodes").."/mesh_nodes.lua")

dofile(minetest.get_modpath("mcnodes").."/items.lua")

dofile(minetest.get_modpath("mcnodes").."/stairs_functions.lua")
dofile(minetest.get_modpath("mcnodes").."/stairs.lua")

dofile(minetest.get_modpath("mcnodes").."/crafting.lua")

--dofile(minetest.get_modpath("mcnodes").."/hand.lua")

if LargeChest == '1' then
	dofile(minetest.get_modpath("mcnodes").."/chest.functions.lua")
	dofile(minetest.get_modpath("mcnodes").."/chest.lua")
end

dofile(minetest.get_modpath("mcnodes").."/register_ores.lua")
dofile(minetest.get_modpath("mcnodes").."/register_biome.lua")

dofile(minetest.get_modpath("mcnodes").."/replaced_nodes.lua")

dofile(minetest.get_modpath("mcnodes").."/chatcommands.lua")


if AutoStairs == '1' then
	dofile(minetest.get_modpath("mcnodes").."/auto_stairs_functions.lua")
	dofile(minetest.get_modpath("mcnodes").."/auto_stairs.lua")
end



if McMobs == '1' then
	if McMobsInCreative ~= '1' then
		if not minetest.setting_getbool("creative_mode") then
			dofile(minetest.get_modpath("mcnodes").."/mcmobs/mcmobs.init.lua")
		end
	else
		dofile(minetest.get_modpath("mcnodes").."/mcmobs/mcmobs.init.lua")
	end
end

if McHud == '1' then
	dofile(minetest.get_modpath("mcnodes").."/mchud/mchud.init.lua")
end
