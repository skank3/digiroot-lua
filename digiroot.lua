local function get_digiroot(n)
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
		sum = get_digiroot(sum)
	end
	return sum
end

print(get_digiroot(arg[1]))
