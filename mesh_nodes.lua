minetest.register_node("mcnodes:anvil", {
	description = "Anvil",
	drawtype = "mesh",
	mesh = "mcnodes_anvil.obj",
	tiles = {"mcnodes_anvil.png"},
	groups = {cracky = 3},
	paramtype = "light",
	paramtype2 = "facedir",
	visual_scale = "1",
	drop = 'mcnodes:anvil',
	--selection_box = {type = "fixed", fixed = {0.3, 0.3, 0.48, -0.32, -0.48, -0.49}},
	selection_box = {type = "fixed", fixed = {0.493, 0.31, 0.32, -0.495, -0.485, -0.32}},
	collision_box = {type = "fixed", fixed = {0.493, 0.31, 0.32, -0.495, -0.485, -0.32}},
})
