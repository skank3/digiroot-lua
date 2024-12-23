local digiroot = {}

function digiroot.get_digiroot(n)
	n = tonumber(n)
	if type(n) ~= "number" then
		return nil
	end

	return 1 + (math.fmod(n - 1, 9))
end

return digiroot
