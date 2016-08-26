function McNodesCheckNode(node)
	if not ItemStack(node):is_known() then
		return false
	elseif ItemStack(node):is_known() then
		return node
	end
end

function getNodeYaxis(pos)
	-- Taken from Krock's answer: https://forum.minetest.net/viewtopic.php?f=47&t=15276#p227580
	local node = minetest.get_node(vector.new(pos))
	local dir = minetest.facedir_to_dir(node.param2 % 4)
	angle = '0'
	if dir.z == 1 then
		angle = '90'
	elseif dir.x == -1 then
		angle = '180'
	elseif dir.z == -1 then
		angle = '270'
	end
	
	return angle
end

function getNodeFRotation(pos)
	local FRotation = minetest.get_node(pos).param2 % 32
	return FRotation
end
