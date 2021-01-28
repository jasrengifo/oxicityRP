-- Meu primeiro script

	ESX = nil

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



	RegisterNetEvent("esx_test:oxicity")
	AddEventHandler("esx_test:oxicity", function()
		TriggerEvent("chatMessage", "Oxicity", {0,255,0}, 'Oxicity RP - Discord: https://discord.gg/SvysmvnD')
		local v = vector3(-2357.5, 3252.1, 31.5)
		local playerCoords = GetEntityCoords(PlayerPedId())
		local distancia = #(playerCoords - v)
		TriggerEvent("chatMessage", "Oxicity", {0,255,0}, distancia)

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


	function FastTravel(coords, heading)
		local playerPed = PlayerPedId()
	
		DoScreenFadeOut(800)
	
		while not IsScreenFadedOut() do
			Citizen.Wait(500)
		end
	
		ESX.Game.Teleport(playerPed, coords, function()
			DoScreenFadeIn(800)
	
			if heading then
				SetEntityHeading(playerPed, heading)
			end
		end)
	end


	local mierda = true
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)


		
	
			

			-- TriggerEvent("chatMessage", "Secuestrador", {0,255,0}, type(playerCoords))
			local v = vector3(-2357.5, 3252.1, 31.5)
			local playerCoords = GetEntityCoords(PlayerPedId())
			local distancia = #(playerCoords - v)

			
			

			if distancia < 1.5 then
				DrawMarker(25, -2357.5, 3252.1, 30.5 + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
				local playerPed = PlayerPedId()

				

				if IsControlJustReleased(0, 38)  then
					TriggerEvent("chatMessage", "Oxicity", {0,255,0}, 'TEST')
					local coords = {}
					coords.x = -2360.9
					coords.y = 3249.3
					coords.z = 91.9
					FastTravel(coords, false)
				end
			end


		
		end
	end)


