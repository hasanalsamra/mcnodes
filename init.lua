AutoStairs = '1'

dofile(minetest.get_modpath("mcnodes").."/functions.general.lua")

dofile(minetest.get_modpath("mcnodes").."/nodes.lua")

dofile(minetest.get_modpath("mcnodes").."/mesh_nodes.lua")

dofile(minetest.get_modpath("mcnodes").."/items.lua")

dofile(minetest.get_modpath("mcnodes").."/stairs_functions.lua")
dofile(minetest.get_modpath("mcnodes").."/stairs.lua")

dofile(minetest.get_modpath("mcnodes").."/crafting.lua")

--dofile(minetest.get_modpath("mcnodes").."/hand.lua")

dofile(minetest.get_modpath("mcnodes").."/chest.lua")

dofile(minetest.get_modpath("mcnodes").."/register_ores.lua")
dofile(minetest.get_modpath("mcnodes").."/register_biome.lua")

dofile(minetest.get_modpath("mcnodes").."/replaced_nodes.lua")


if AutoStairs == '1' then
	dofile(minetest.get_modpath("mcnodes").."/auto_stairs_functions.lua")
	dofile(minetest.get_modpath("mcnodes").."/auto_stairs.lua")
end
