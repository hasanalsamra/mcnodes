minetest.register_craft({
	output = 'mcnodes:quartz_block 1',
	recipe = {
		{'', '', ''},
		{'mcnodes:quartz_item', 'mcnodes:quartz_item', ''},
		{'mcnodes:quartz_item', 'mcnodes:quartz_item', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:quartz_block_chiseled 1',
	recipe = {
		{'', '', ''},
		{'', 'mcnodes:slab_quartz', ''},
		{'', 'mcnodes:slab_quartz', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:quartz_block_pillar 2',
	recipe = {
		{'', '', ''},
		{'', 'mcnodes:quartz_block', ''},
		{'', 'mcnodes:quartz_block', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:diorite 2',
	recipe = {
		{'', '', ''},
		{'default:cobble', 'mcnodes:quartz_item', ''},
		{'mcnodes:quartz_item', 'default:cobble', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:granite 1',
	recipe = {
		{'', '', ''},
		{'mcnodes:diorite', 'mcnodes:quartz_item', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:smooth_andesite 4',
	recipe = {
		{'', '', ''},
		{'mcnodes:andesite', 'mcnodes:andesite', ''},
		{'mcnodes:andesite', 'mcnodes:andesite', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:smooth_diorite 4',
	recipe = {
		{'', '', ''},
		{'mcnodes:diorite', 'mcnodes:diorite', ''},
		{'mcnodes:diorite', 'mcnodes:diorite', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:smooth_granite 4',
	recipe = {
		{'', '', ''},
		{'mcnodes:granite', 'mcnodes:granite', ''},
		{'mcnodes:granite', 'mcnodes:granite', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:andesite 2',
	recipe = {
		{'', '', ''},
		{'mcnodes:diorite', 'default:cobble', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:blue_brick 1',
	recipe = {
		{'', '', ''},
		{'default:brick', 'dye:blue', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:yellow_brick 1',
	recipe = {
		{'', '', ''},
		{'default:brick', 'dye:yellow', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:grey_brick 1',
	recipe = {
		{'', '', ''},
		{'default:brick', 'dye:grey', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:smooth_sandstone 9',
	recipe = {
		{'default:sandstone', 'default:sandstone', 'default:sandstone'},
		{'default:sandstone', 'default:sandstone', 'default:sandstone'},
		{'default:sandstone', 'default:sandstone', 'default:sandstone'},
	}
})

minetest.register_craft({
	output = 'mcnodes:chiseled_sandstone 1',
	recipe = {
		{'', '', ''},
		{'', 'stairs:slab_sandstone', ''},
		{'', 'stairs:slab_sandstone', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:red_sand 1',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'default:sand', 'dye:red', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:red_sandstone 1',
	recipe = {
		{'', '', ''},
		{'mcnodes:red_sand', 'mcnodes:red_sand', ''},
		{'mcnodes:red_sand', 'mcnodes:red_sand', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:smooth_red_sandstone 9',
	recipe = {
		{'mcnodes:red_sandstone', 'mcnodes:red_sandstone', 'mcnodes:red_sandstone'},
		{'mcnodes:red_sandstone', 'mcnodes:red_sandstone', 'mcnodes:red_sandstone'},
		{'mcnodes:red_sandstone', 'mcnodes:red_sandstone', 'mcnodes:red_sandstone'},
	}
})

minetest.register_craft({
	output = 'mcnodes:chiseled_red_sandstone 1',
	recipe = {
		{'', '', ''},
		{'', 'mcnodes:slab_red_sandstone', ''},
		{'', 'mcnodes:slab_red_sandstone', ''},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "mcnodes:hardened_clay",
	recipe = "default:clay",
})

minetest.register_craft({
	output = 'mcnodes:white_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:white', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:orange_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:orange', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:magenta_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:magenta', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:yellow_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:yellow', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:lime_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:dark_green', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:pink_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:pink', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:grey_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:grey', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:cyan_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:cyan', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:blue_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:blue', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:brown_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:brown', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:green_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:green', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:red_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:red', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:black_hardened_clay 8',
	recipe = {
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'dye:black', 'mcnodes:hardened_clay'},
		{'mcnodes:hardened_clay', 'mcnodes:hardened_clay', 'mcnodes:hardened_clay'},
	}
})

minetest.register_craft({
	output = 'mcnodes:anvil 1',
	recipe = {
		{'default:steelblock', 'default:steelblock', 'default:steelblock'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'mcnodes:black_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:black', 'wool:black', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:blue_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:blue', 'wool:blue', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:brown_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:brown', 'wool:brown', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:cyan_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:cyan', 'wool:cyan', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:green_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:green', 'wool:green', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:grey_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:grey', 'wool:grey', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:magenta_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:magenta', 'wool:magenta', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:orange_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:orange', 'wool:orange', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:red_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:red', 'wool:red', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:white_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:white', 'wool:white', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:yellow_carpet 8',
	recipe = {
		{'', '', ''},
		{'wool:yellow', 'wool:yellow', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mcnodes:lapis_lazuli_block 1',
	recipe = {
		{'dye:blue', 'dye:blue', 'dye:blue'},
		{'dye:blue', 'dye:blue', 'dye:blue'},
		{'dye:blue', 'dye:blue', 'dye:blue'},
	}
})

minetest.register_craft({
	output = 'dye:blue 9',
	recipe = {
		{'', '', ''},
		{'', 'mcnodes:lapis_lazuli_block', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "dye:blue",
	recipe = "mcnodes:lapis_lazuli_ore",
})

minetest.register_craft({
	output = 'mcnodes:emerald_block',
	recipe = {
		{'mcnodes:emerald_item', 'mcnodes:emerald_item', 'mcnodes:emerald_item'},
		{'mcnodes:emerald_item', 'mcnodes:emerald_item', 'mcnodes:emerald_item'},
		{'mcnodes:emerald_item', 'mcnodes:emerald_item', 'mcnodes:emerald_item'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "mcnodes:emerald_item",
	recipe = "mcnodes:emerald_ore",
})

minetest.register_craft({
	output = 'mcnodes:emerald_item 9',
	recipe = {
		{'', '', ''},
		{'', 'mcnodes:emerald_block', ''},
		{'', '', ''},
	}
})
