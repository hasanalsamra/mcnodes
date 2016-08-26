ChangeChest = '1'
LargeChest = '1'

minetest.register_node("mcnodes:quartz_block", {
	description = "Quartz block",
	tiles = {"mcnodes_quartz_block_top.png", "mcnodes_quartz_block_bottom.png", "mcnodes_quartz_block.png", "mcnodes_quartz_block.png", "mcnodes_quartz_block.png", "mcnodes_quartz_block.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:quartz_block',
})

minetest.register_node("mcnodes:quartz_block_chiseled", {
	description = "Chiseled quartz block",
	tiles = {"mcnodes_quartz_block_chiseled_top.png", "mcnodes_quartz_block_chiseled_top.png", "mcnodes_quartz_block_chiseled.png", "mcnodes_quartz_block_chiseled.png", "mcnodes_quartz_block_chiseled.png", "mcnodes_quartz_block_chiseled.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:quartz_block_chiseled',
})

minetest.register_node("mcnodes:quartz_block_pillar", {
	description = "Pillar quartz block",
	tiles = {"mcnodes_quartz_block_pillar_top.png", "mcnodes_quartz_block_pillar_top.png", "mcnodes_quartz_block_pillar.png", "mcnodes_quartz_block_pillar.png", "mcnodes_quartz_block_pillar.png", "mcnodes_quartz_block_pillar.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = 'mcnodes:quartz_block_pillar',
	on_place = minetest.rotate_node
})

minetest.register_node("mcnodes:quartz_ore", {
	description = "Quartz ore",
	tiles = {"mcnodes_quartz_ore.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:quartz_item',
})

minetest.register_node("mcnodes:diorite", {
	description = "Diorite block",
	tiles = {"mcnodes_diorite.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:diorite',
})

minetest.register_node("mcnodes:smooth_diorite", {
	description = "Smooth diorite block",
	tiles = {"mcnodes_diorite_smooth.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:smooth_diorite',
})

minetest.register_node("mcnodes:granite", {
	description = "Granite block",
	tiles = {"mcnodes_granite.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:granite',
})

minetest.register_node("mcnodes:smooth_granite", {
	description = "Smooth granite block",
	tiles = {"mcnodes_granite_smooth.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:smooth_granite',
})

minetest.register_node("mcnodes:andesite", {
	description = "Andesite block",
	tiles = {"mcnodes_andesite.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:andesite',
})

minetest.register_node("mcnodes:smooth_andesite", {
	description = "Smooth andesite block",
	tiles = {"mcnodes_andesite_smooth.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:smooth_andesite',
})

minetest.register_node("mcnodes:blue_brick", {
	description = "Blue brick",
	tiles = {"mcnodes_blue_brick.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:blue_brick',
})

minetest.register_node("mcnodes:yellow_brick", {
	description = "Yellow brick",
	tiles = {"mcnodes_yellow_brick.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:yellow_brick',
})

minetest.register_node("mcnodes:grey_brick", {
	description = "Grey brick",
	tiles = {"mcnodes_grey_brick.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:grey_brick',
})

minetest.register_node("mcnodes:smooth_sandstone", {
	description = "Smooth sandstone",
	tiles = {"mcnodes_sandstone_top.png", "mcnodes_sandstone_bottom.png", "mcnodes_smooth_sandstone.png", "mcnodes_smooth_sandstone.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:smooth_sandstone',
})

minetest.register_node("mcnodes:chiseled_sandstone", {
	description = "Chiseled sandstone",
	tiles = {"mcnodes_sandstone_top.png", "mcnodes_sandstone_bottom.png", "mcnodes_chiseled_sandstone.png", "mcnodes_chiseled_sandstone.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:chiseled_sandstone',
})

minetest.register_node("mcnodes:red_sand", {
	description = "Red sand",
	tiles = {"default_sand.png^[colorize:#983800:200"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	drop = 'mcnodes:red_sand',
	sounds = default.node_sound_sand_defaults(),
	alpha = 160,
})

minetest.register_node("mcnodes:red_sandstone", {
	description = "Red sandstone",
	tiles = {"mcnodes_sandstone_top.png^[colorize:#983800:200", "mcnodes_sandstone_bottom.png^[colorize:#983800:200", "default_sandstone.png^[colorize:#983800:200", "default_sandstone.png^[colorize:#983800:200"},
	groups = {cracky = 3},
	drop = 'mcnodes:red_sandstone',
})

minetest.register_node("mcnodes:smooth_red_sandstone", {
	description = "Smooth red sandstone",
	tiles = {"mcnodes_sandstone_top.png^[colorize:#983800:200", "mcnodes_sandstone_bottom.png^[colorize:#983800:200", "mcnodes_smooth_sandstone.png^[colorize:#983800:200", "mcnodes_smooth_sandstone.png^[colorize:#983800:200"},
	groups = {cracky = 3},
	drop = 'mcnodes:smooth_red_sandstone',
})

minetest.register_node("mcnodes:chiseled_red_sandstone", {
	description = "Chiseled red sandstone",
	tiles = {"mcnodes_sandstone_top.png^[colorize:#983800:200", "mcnodes_sandstone_bottom.png^[colorize:#983800:200", "mcnodes_smooth_sandstone.png^[colorize:#983800:200^mcnodes_red_chiseled_sandstone.png", "mcnodes_smooth_sandstone.png^[colorize:#983800:200^mcnodes_red_chiseled_sandstone.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:chiseled_red_sandstone',
})

minetest.register_node("mcnodes:hardened_clay", {
	description = "Hardened clay",
	tiles = {"mcnodes_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:hardened_clay',
})

minetest.register_node("mcnodes:black_hardened_clay", {
	description = "Black hardened clay",
	tiles = {"mcnodes_black_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:black_hardened_clay',
})

minetest.register_node("mcnodes:blue_hardened_clay", {
	description = "Blue hardened clay",
	tiles = {"mcnodes_blue_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:blue_hardened_clay',
})

minetest.register_node("mcnodes:brown_hardened_clay", {
	description = "Brown hardened clay",
	tiles = {"mcnodes_brown_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:brown_hardened_clay',
})

minetest.register_node("mcnodes:cyan_hardened_clay", {
	description = "Cyan hardened clay",
	tiles = {"mcnodes_cyan_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:cyan_hardened_clay',
})

minetest.register_node("mcnodes:grey_hardened_clay", {
	description = "Grey hardened clay",
	tiles = {"mcnodes_grey_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:grey_hardened_clay',
})

minetest.register_node("mcnodes:green_hardened_clay", {
	description = "Green hardened clay",
	tiles = {"mcnodes_green_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:green_hardened_clay',
})

minetest.register_node("mcnodes:lime_hardened_clay", {
	description = "Lime hardened clay",
	tiles = {"mcnodes_lime_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:lime_hardened_clay',
})

minetest.register_node("mcnodes:magenta_hardened_clay", {
	description = "Magenta hardened clay",
	tiles = {"mcnodes_magenta_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:magenta_hardened_clay',
})

minetest.register_node("mcnodes:orange_hardened_clay", {
	description = "Orange hardened clay",
	tiles = {"mcnodes_orange_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:orange_hardened_clay',
})

minetest.register_node("mcnodes:pink_hardened_clay", {
	description = "Pink hardened clay",
	tiles = {"mcnodes_pink_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:pink_hardened_clay',
})

minetest.register_node("mcnodes:red_hardened_clay", {
	description = "Red hardened clay",
	tiles = {"mcnodes_red_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:red_hardened_clay',
})

minetest.register_node("mcnodes:white_hardened_clay", {
	description = "White hardened clay",
	tiles = {"mcnodes_white_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:white_hardened_clay',
})

minetest.register_node("mcnodes:yellow_hardened_clay", {
	description = "Yellow hardened clay",
	tiles = {"mcnodes_yellow_hardened_clay.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:yellow_hardened_clay',
})

minetest.register_node("mcnodes:black_carpet", {
	description = "Black carpet",
	drawtype = "nodebox",
	tiles = {"wool_black.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:blue_carpet", {
	description = "Blue carpet",
	drawtype = "nodebox",
	tiles = {"wool_blue.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:brown_carpet", {
	description = "Brown carpet",
	drawtype = "nodebox",
	tiles = {"wool_brown.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:cyan_carpet", {
	description = "Cyan carpet",
	drawtype = "nodebox",
	tiles = {"wool_cyan.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:green_carpet", {
	description = "Green carpet",
	drawtype = "nodebox",
	tiles = {"wool_green.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:grey_carpet", {
	description = "Grey carpet",
	drawtype = "nodebox",
	tiles = {"wool_grey.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:magenta_carpet", {
	description = "Magenta carpet",
	drawtype = "nodebox",
	tiles = {"wool_magenta.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:orange_carpet", {
	description = "Orange carpet",
	drawtype = "nodebox",
	tiles = {"wool_orange.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:red_carpet", {
	description = "Red carpet",
	drawtype = "nodebox",
	tiles = {"wool_red.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:white_carpet", {
	description = "White carpet",
	drawtype = "nodebox",
	tiles = {"wool_white.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:yellow_carpet", {
	description = "Yellow carpet",
	drawtype = "nodebox",
	tiles = {"wool_yellow.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
})

minetest.register_node("mcnodes:lapis_lazuli_ore", {
	description = "Lapis lazuli ore",
	tiles = {"default_stone.png^mcnodes_lapis_ore.png"},
	groups = {cracky = 3},
	drop = 'dye:blue 3',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mcnodes:lapis_lazuli_block", {
	description = "Lapis lazuli block",
	tiles = {"mcnodes_lapis_block.png"},
	groups = {cracky = 3},
	drop = 'mcnodes:lapis_lazuli_block',
})

minetest.register_node("mcnodes:emerald_ore", {
	description = "Emerald ore",
	tiles = {"default_stone.png^mcnodes_emerald_ore.png"},
	groups = {cracky = 1},
	drop = 'mcnodes:emerald_item',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mcnodes:emerald_block", {
	description = "Emerald block",
	tiles = {"mcnodes_emerald_block.png"},
	groups = {cracky = 1},
	drop = 'mcnodes:emerald_block',
})
