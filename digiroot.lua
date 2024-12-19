local digiroot = {}

function digiroot.get_digiroot(n)
	n = tonumber(n)
	if type(n) ~= "number" then
		return nil
	end

	local sum = 0
	while n > 0 do
		sum = sum + n % 10
		n = math.floor(n / 10)
	end

	if sum >= 10 then
		sum = digiroot.get_digiroot(sum)
	end
	return sum
end

return digiroot
