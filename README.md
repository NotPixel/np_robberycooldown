# Robbery Cooldown
A simple take on handling robbery cooldowns.

# Use
To check if a cooldown is active, you simply do the following from a robbery script:
```
local check = exports.np_robberycooldown:CooldownCheck()
```
Then, you do the following:
```
if not check then
	 exports.np_robberycooldown:StartCooldown(5000)
	 -- Start Robbery Stuff goes here.
else
   -- Insert notification system
end
```

# Support
If you run into an issue whilst using this robbery cooldown handler, please create an issue.
