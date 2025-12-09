local var1 = true and true -- true
print(var1)
local var2 = false or false -- false
print(var2)
local var3 = not false -- true
print(var3)
local var4 = not true -- false
print(var4)

local var5 = 5==5
local var6 = 5==6
local var7 = var5 and var6 -- false 
print(var7)

local var8 = var5 or var6 -- true
print(var8)