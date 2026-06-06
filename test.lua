local minicoin = require("minimum_coin") 
local x 
local function test() 
    for _,coins in ipairs(x) do 
    print(coins) 
end
end

x = minicoin(25,{5,6,10})
test()
-- if you want to add more test just : 
--x=minicoin(value,{amount,amount,amount}) 
--test() 