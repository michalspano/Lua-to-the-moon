-- This is a test '.lua' file
io.write("LUA CHEAT SHEET\nCurated by @michalspano at GitHub" .. 
string.rep('\n', 3) .. "Outputs:\n")

-- Print out to command line
print("Hello from Lua!")

-- Comments in Lua
-- This is a singel line comment

--[[
    this is a multi line comment
]]

-- Variables (string surrounded by ' or ")
name = "Michal"
country = 'Slovakia'

-- (Alternative) to print out to command line ('\n') needed here
io.write(name, "\n")

-- Get the size of a string
io.write("Size of a string: ", #name, "\n")

-- Assigning an intiger
age = 20

-- Concatenate strings with '..'
print(name .. ' ' .. age)

-- Floating point numbers
myFloat = 3.1415926535
print("Pi: " .. myFloat)

-- Formatting decimal places (or any strings)
print(string.format("Pi: %.5f", myFloat) .. " rounded to 5 decimal places.")

-- Type of a variable
print("Type: " .. type(myFloat))

-- Long strings (preserves white spaces)
myLongString = [[
    This is a long string.
    This is my second line.
    Third. And so forth.
]]
io.write(myLongString, "size: ", #myLongString, '\n')

-- Boolean in Lua
isCodingFun = true
print("Type: " .. type(isCodingFun))

-- Unassigned variables of type 
print("Type: " .. type(unassignedVar))

--[[ 
    Random intigers (in a specified range); 
    range (taken as an interval) is 'closed from both sides', i.e. inclusive
]]
print("Range: 0-1\nResult: " .. math.random()) --> outputs type 'float' between 0 to 1
print("Range: 0-10\nResult: " .. math.random(10)) --> outputs type 'int' between 0 to 10
print("Range: 10-100\nResult: " .. math.random(10, 100)) --> outputs type 'int' between 10 to 100
