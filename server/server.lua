ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local cooldown = false
local cooldowntimer = nil

function CooldownCheck()
	if cooldown then
		return true
	else
		return false
	end
end

function StartCooldown(time)
	if not cooldown then
		cooldown = true
		StartTimer(time)
		return true
	else
		return false
	end
end

function StartTimer(temptime)

	local temptime = ESX.Math.Round(temptime * 10 / 1000)

	Citizen.CreateThread(function()
		while cooldown do
			Citizen.Wait(1000)

			if temptime > 0 then
				temptime = temptime - 1
				print(temptime)
			end

			if temptime == 0 then
				cooldown = false
				return
			end
		end
	end)
end
