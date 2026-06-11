--[[ 
  --minicoin test : 
  local minicoin = require("minimum_coin") 
local x 
local function test() 
    for _,coins in ipairs(x) do 
    print(coins) 
end
end

x = minicoin(25,{5,6,10})
test()
if you want to add more test just : 
x=minicoin(value,{amount,amount,amount}) 
test() 
]]--

--[[ -- CircularBuffer test
local CircularBuffer =  require("main") 
local buffer = CircularBuffer:new(1) 
local ok , err = pcall(function () buffer:read() end) 
print(err)
local buffer = CircularBuffer:new(1) 
buffer:write("1") 
print(buffer:read().."\n" )
local ok, err = pcall(function ()buffer:read() end)
print(err)

local buffer = CircularBuffer:new(2) 
buffer:write("1") 
buffer:write("2") 
print(buffer:read()) 
print(buffer:read().."\n") 
local ok, err = pcall(function ()buffer:read() end)
print(err)
 
local buffer = CircularBuffer:new(2) 
buffer:write("1") 
buffer:write("2") 
buffer:clear() 
local ok, err = pcall(function ()buffer:read() end)
print(err) 
buffer:write("3") 
buffer:write("4") 
print(buffer:read()) 
print(buffer:read().."\n") 

local buffer = CircularBuffer:new(2) 
buffer:write("1") 
print(buffer:read() .."\n") 
buffer:write("2") 
print(buffer:read().."\n")
local buffer = CircularBuffer:new(3) 
buffer:write("1") 
buffer:write("2") 
buffer:read() 
buffer:write("3") 
print(buffer:read()) 
print(buffer:read().."\n") 

local buffer = CircularBuffer:new(3) 
buffer:write(nil) 
for i= 1,3 do 
    buffer:write(tostring(i)) 
end

print(buffer:read().."\n") 
local buffer = CircularBuffer:new(2) 
buffer:write("1") 
buffer:write("2") 
local ok, err = pcall(function () buffer:write("A") end )
print(err)
local buffer = CircularBuffer:new(2) 
buffer:write("1") 
buffer:write("2") 
buffer:forceWrite("A") 
print(buffer:read())
print(buffer:read()) 
local ok, err = pcall(function ()buffer:read() end)
print(err .."\n")
local buffer= CircularBuffer:new(2) 
buffer:write("1") 
buffer:forceWrite("2") 
print(buffer:read()) 
print(buffer:read()) 

local ok, err = pcall(function ()buffer:read() end)
print(err .."\n")

local buffer = CircularBuffer:new(5) 
for i = 1, 3 do 
    buffer:write(tostring(i)) 
end 
buffer:read() 
buffer:read() 
buffer:write("4") 
buffer:read() 
for i= 5, 8 do 
    buffer:write(tostring(i) ) 
end 
buffer:forceWrite("A") 
buffer:forceWrite("B") 
print(buffer:read() )
print(buffer:read() )
print(buffer:read() )
print(buffer:read() )
print(buffer:read() )

local ok, err = pcall(function ()buffer:read() end)
print(err .."\n")
--]]