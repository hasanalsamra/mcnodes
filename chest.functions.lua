function PlaceChest(NodeOn, Pos, OldNodePos)
	if NodeOn == 'ZN' then
		if getNodeYaxis(Pos) == '270' and getNodeYaxis(OldNodePos) == '270' or getNodeYaxis(Pos) == '90' and getNodeYaxis(OldNodePos) == '270' or getNodeYaxis(Pos) == '270' and getNodeYaxis(OldNodePos) == '90' then
			True = false
		else
			True = true
		end
	end
	
	if NodeOn == 'ZP' then
		if getNodeYaxis(Pos) == '90' and getNodeYaxis(OldNodePos) == '90' or getNodeYaxis(Pos) == '270' and getNodeYaxis(OldNodePos) == '90' or getNodeYaxis(Pos) == '90' and getNodeYaxis(OldNodePos) == '270' then
			True = false
		else
			True = true
		end
	end
	
	if NodeOn == 'XN' then
		if getNodeYaxis(Pos) == '180' and getNodeYaxis(OldNodePos) == '180' or getNodeYaxis(Pos) == '0' and getNodeYaxis(OldNodePos) == '180' or getNodeYaxis(Pos) == '180' and getNodeYaxis(OldNodePos) == '0' then
			True = false
		else
			True = true
		end
	end
	
	if NodeOn == 'XP' then
		if getNodeYaxis(Pos) == '0' and getNodeYaxis(OldNodePos) == '0' or getNodeYaxis(Pos) == '180' and getNodeYaxis(OldNodePos) == '0' or getNodeYaxis(Pos) == '0' and getNodeYaxis(OldNodePos) == '180' then
			True = false
		else
			True = true
		end
	end
	
	return True
end
