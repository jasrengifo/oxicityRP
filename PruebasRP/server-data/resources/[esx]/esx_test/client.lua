-- Meu primeiro script

	RegisterNetEvent("esx_test:oxicity")
	AddEventHandler("esx_test:oxicity", function()
		TriggerEvent("chatMessage", "Oxicity", {0,255,0}, 'Oxicity RP - Discord: https://discord.gg/SvysmvnD')

		

	end)




	RegisterNetEvent('esx_test:teleport')
	AddEventHandler('esx_test:teleport', function(coords)
		-- TriggerEvent("chatMessage", "Oxicity", {0,255,0}, coords.x)
		local playerPed = PlayerPedId()

		-- ensure decmial number
		coords.x = coords.x + 0.0
		coords.y = coords.y + 0.0
		coords.z = coords.z + 0.0

		ESX.Game.Teleport(playerPed, coords)
	end)


