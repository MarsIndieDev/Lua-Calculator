--[[
function cal(n1, n3, n2)
    if n3 == 0 then
        return 1
    else
        return n1 + n2
    end
end
--]]

--[[

print("Enter Number: ")
a = io.read("*n")

print("Arithmetic Operator: ")
b = io.read(1)

print("Enter your 2nd Number: ")
c = io.read("*n")

print(cal(a) )
--print(cal(a))
print()
--]]

print("Enter Number: ")
--a = io.read("*n")
local a = tonumber(io.read())

print("Enter your 2nd Number: ")
--c = io.read("*n")
local c = tonumber(io.read())

print("Arithmetic Operator: ")
local b = io.read(1)


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