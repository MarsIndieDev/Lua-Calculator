local a = nil
local b = nil
local c = nil
local result = ""

local step = 1

function love.draw()
    love.graphics.print("A: "..tostring(a or ""), 50, 20)
    love.graphics.print("Op: "..tostring(b or ""), 50, 40)
    love.graphics.print("C: "..tostring(c or ""), 50, 60)
    love.graphics.print("Result: "..tostring(result), 50, 90)

    love.graphics.rectangle("line", 50, 140, 50, 50)
    love.graphics.print("+", 70, 155)

    love.graphics.rectangle("line", 110, 140, 50, 50)
    love.graphics.print("-", 130, 155)

    love.graphics.rectangle("line", 170, 140, 50, 50)
    love.graphics.print("*", 190, 155)

    love.graphics.rectangle("line", 230, 140, 50, 50)
    love.graphics.print("/", 250, 155)

    love.graphics.rectangle("line", 300, 140, 80, 50)
    love.graphics.print("=", 335, 155)

    for i = 1, 9 do
        local x = 50 + ((i - 1) % 3) * 60
        local y = 280 + math.floor((i - 1) / 3) * 60

        love.graphics.rectangle("line", x, y, 50, 50)
        love.graphics.print(tostring(i), x + 20, y + 15)
    end
end

function love.mousepressed(x, y, button)
    if button ~= 1 then return end
        
        if x > 50 and x < 100 and y > 140 and y < 190 then
            if a then 
                b = "+"
                step = 3
            end

        elseif x > 110 and x < 160 and y > 140 and y < 190 then
            if a then 
                b = "-"
                step = 3
            end

        elseif x > 170 and x < 220 and y > 140 and y < 190 then
            if a then 
                b = "*"
                step = 3
            end

        elseif x > 230 and x < 280 and y > 140 and y < 190 then
            if a then 
                b = "/"
                step = 3
            end
         
        elseif x > 300 and x < 380 and y > 140 and y < 190 then

        if a and b and c then
            if b == "+" then
                result = a + c
            elseif b == "-" then
                result = a - c
            elseif b == "*" then
                result = a * c
            elseif b == "/" then
                if c ~= 0 then
                    result = a / c
                else
                    result = "Invalid"
    end
end

        a = nil
        b = nil
        c = nil
        step = 1
    end
end

    for i = 1, 9 do
        local bx = 50 + ((i - 1) % 3) * 60
        local by = 280 + math.floor((i - 1) / 3) * 60

        if x > bx and x < bx + 50 and y > by and y < by + 50 then
            if step == 1 then
                a = i
                step = 2
            elseif step == 3 then
                c = i
            end
        end
    end
end
