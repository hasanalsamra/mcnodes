minetest.register_chatcommand("mcnodes", {
	params = "",
	description = "Mcnodes mod version",
	privs = {},
	func = function()
		return true, version
	end,
})
