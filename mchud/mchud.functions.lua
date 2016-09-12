damage = minetest.setting_getbool("enable_damage")

function PEvent(name, event)
	minetest.after(0, function()
		if event == "health_changed" then
			for _,v in pairs(mchud.damage_events) do
				if v.func then
					v.func(name)
				end
			end
		end

		if event == "breath_changed" then
			for _,v in pairs(mchud.breath_events) do
				if v.func then
					v.func(name)
				end
			end
		end
    end)
end

minetest.register_playerevent(PEvent)
