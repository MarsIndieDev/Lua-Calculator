-- Input
print("Enter Number: ")
local a = tonumber(io.read())

print("Arithmetic Operator: ")
local b = io.read("l")

print("Enter your 2nd Number: ")
local c = tonumber(io.read())

-- Input check
if type(a) ~= "number" then
	print("Please enter a number for `a`")
	return
end

if type(c) ~= "number" then
	print("Please enter a number for `c`")
	return
end

local result
if b == "+" then
	result = a + c
elseif b == "-" then
	result = a - c
elseif b == "*" then
	result = a * c
elseif b == "/" then
	result = a / c
else
	print("invalid")
end

print(result)

