-----------------------------------------------------------------------------------------------
--SCRIPT CREADO PARA EL SERVIDOR DE FIVEM DE PLATA O PLOMO COMUNIDAD GAMER.
--SCRIPT CREADO TOTALMENTE POR THEMAYKELLLL1 [ MIGUEL ANGEL LOPEZ REYES ].
--PLATA O PLOMO COMUNIDAD GAMER ACEPTA NO VENDER / REGALAR / PASAR ESTOS SCRIPTS A OTRAS PERSONAS O COMUNIDADES.
-----------------------------------------------------------------------------------------------


-------------------------------------------
------------------VARIABLES----------------
-------------------------------------------

local pizzeria = { x = 323.7, y = -1373.9, z = 30.9}
local spawnfaggio = { x = 83.0, y = 266.4, z = 108.6 }

local propina = 0
local posibilidad = 0
local culo = false

--tipos de tareas
--1 = Corregir cuentas en documentos



local tareas = {
	[1] = {name = "Taquillas", x = 320.5, y = -1372.3, z = 30.9, tipo_tarea = 1},
	[2] = {name = "Vinewood Hills",x = -1338.97, y = 606.31 , z = 133.37},
}

local isWorking = false
local sigTarea = 0
local plateab = "POPJOBS"
local hacerTarea = false
local isToPizzaria = false
local multiplicador_De_dinero = 0.5 
local paga = 0

local px = 0
local py = 0
local pz = 0

local blips = {
	{title="Pizzeria", colour=66, id=267, x = 80.8, y = 274.6, z = 109.2},
}

-------------------------------------------
--------------------BLIPS------------------
-------------------------------------------

Citizen.CreateThread(function()

    while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
    


    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

function irATarea(tareas,sigTarea)
	blip_casa = AddBlipForCoord(tareas[sigTarea].x,tareas[sigTarea].y, tareas[sigTarea].z)
	SetBlipSprite(blip_casa, 1)
	SetNewWaypoint(tareas[sigTarea].x,tareas[sigTarea].y)
end

-------------------------------------------
------------------CITIZENS-----------------
-------------------------------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        if isWorking == false then
            SetNuiFocus(false, false)
			DrawMarker(1,pizzeria.x,pizzeria.y,pizzeria.z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
			if GetDistanceBetweenCoords(pizzeria.x, pizzeria.y, pizzeria.z, GetEntityCoords(GetPlayerPed(-1),true)) < 1.5 then
				drawTxt("Presiona la tecla <b>E</b> para empezar a trabajar",2, 1, 0.45, 0.03, 0.80,255,255,51,255)
				if IsControlJustPressed(1,38) then
					isWorking = true
					hacerTarea = true
					sigTarea = math.random(1, 1)
					-- [INFO] TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, sigTarea)
					px = tareas[sigTarea].x
					py = tareas[sigTarea].y
					pz = tareas[sigTarea].z
					distancia = round(GetDistanceBetweenCoords(pizzeria.x, pizzeria.y, pizzeria.z, px,py,pz))
					paga = distancia * multiplicador_De_dinero
					-- [INFO] TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, distancia)
	
					irATarea(tareas,sigTarea)
				end
			end
        end
        


		if hacerTarea == true then
			destinol = tareas[sigTarea].name
			drawTxt("Te necesitan en "..destinol .."",4, 1, 0.45, 0.92, 0.70,255,255,255,255)
            DrawMarker(1,tareas[sigTarea].x,tareas[sigTarea].y,tareas[sigTarea].z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
            
			if GetDistanceBetweenCoords(px,py,pz, GetEntityCoords(GetPlayerPed(-1),true)) < 3 then
                drawTxt("Presiona la tecla <b style='color: red'>E</b> para iniciar tarea",2, 1, 0.45, 0.03, 0.80,255,255,51,255)
                
                

                if IsControlJustPressed(1,38) then
                    
                    TriggerEvent('chatMessage', 'Oxicity', {255, 0, 0}, TriggerServerEvent("esx_contable:get_tarea")) 


				end
			end
        end


        

        




		if isToPizzaria == true then
			drawTxt("HEAD BACK TO THE PIZZERIA TO COLLECT YOUR MONEY",4, 1, 0.45, 0.92, 0.70,255,255,255,255)
			DrawMarker(1,pizzeria.x,pizzeria.y,pizzeria.z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(pizzeria.x,pizzeria.y,pizzeria.z, GetEntityCoords(GetPlayerPed(-1),true)) < 3 then
					drawTxt("PRESS <E> TO BE CHARGED",2, 1, 0.45, 0.03, 0.80,255,255,51,255)
					if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("faggio2"))  then
						if IsControlJustPressed(1,38) then
							if IsInVehicle() then
								TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"Thanks for doing the delivery, take your pay: "..paga.."€")
								TriggerServerEvent("pop_pizzero:propina", paga)
								hacerTarea = false
								isToPizzaria = false
								isWorking = false
								paga = 0
								px = 0
								py = 0
								pz = 0
								local vehicleu = GetVehiclePedIsIn(GetPlayerPed(-1), false)
								SetEntityAsMissionEntity( vehicleu, true, true )
			               		deleteCar( vehicleu )
							else
								TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"I will not pay you if you do not give me my bike, I'm sorry.")
							end
						end
					else
						TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"I will not pay you if you do not give me my bike, I'm sorry.")
					end
				end
        end
        


		if IsEntityDead(GetPlayerPed(-1)) then
			 isWorking = false
			 sigTarea = 0
			 hacerTarea = false
			 isToPizzaria = false
			 paga = 0
			 px = 0
			 py = 0
			 pz = 0
		end
	end
end)

-------------------------------------------
----------------FUNCIONES------------------
-------------------------------------------



function round(num, numDecimalPlaces)
	local mult = 5^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end


function cerrar_todas_las_tareas()
	SendNUIMessage({hoja = "hide"})
end

-------------------------------------------
----------FUNCIONES ADICIONALES------------
-------------------------------------------

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end

function closeGui()
    SetNuiFocus(false, false)
    SendNUIMessage({message = "hide"})
end

RegisterNUICallback('quit', function(data, cb)
    
    closeGui()
end)

--Decide cual tarea vas a usar y la muestra
RegisterNetEvent('esx_contable:mostrarTarea')
	AddEventHandler('esx_contable:mostrarTarea', function()

        
		SendNUIMessage({
            message		= "show",
            clear = true
        })
        SetNuiFocus(true, true)

        
        SendNUIMessage({hoja = "show"})





	end)