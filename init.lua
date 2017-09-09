local sload, srepl = dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/scheme.lua")
minetest.after(0, function()
	for i, m in ipairs(minetest.get_modnames()) do
		local p = minetest.get_modpath(m) .. "/init.scm"
		local file, err = io.open(p, "r")
		if file then
			file:close()
			sload(p)
		end
	end
end)
