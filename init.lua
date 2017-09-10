local p = minetest.get_modpath(minetest.get_current_modname())
local s = dofile(p .. "/scheme.lua")
minetest.after(0, function()
	s.load(p .. "/minetest.scm")
	for i, m in ipairs(minetest.get_modnames()) do
		local p = minetest.get_modpath(m) .. "/init.scm"
		local file, err = io.open(p, "r")
		if file then
			file:close()
			s.load(p)
		end
	end
end)
