
-- Funcion para todos.
RegisterCommand("oxinfo", function(source)
	TriggerClientEvent("esx_test:oxicity", source)

	-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	
	-- local xPlayer = ESX.GetPlayerFromId(source)


end)


-- Funcion para todos.
RegisterCommand("tp", function(source, args)
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)
	local coords
	
	if     args[1] == "aeropuerto_desierto" then 
		coords = {x=1701.3, y=3282.3, z=41.1}
	elseif args[1] == "aeropuerto_los_santos" then
		coords = {x=-1038.1, y=2738.3, z=13.8}
	elseif args[1] == "gopostal" then
		coords = {x=85.4, y=106.9, z=79.2}
	elseif args[1] == "hospital" then
		coords = {x=302.9, y=-1434.7, z=29.8}
	elseif args[1] == "oficina_de_empleos" then
		coords = {x=-264.0, y=-967.6, z=31.2}
	elseif args[1] == "paintball" then
		coords = {x=1851.7, y=2585.7, z=45.7}
	
	else   
		coords = {x=args[1], y=args[2], z=args[3]}
	end


	print(coords.x)
	
	xPlayer.setCoords(coords)






	TriggerClientEvent("esx_test:teleport", coords)



	-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	
	-- local xPlayer = ESX.GetPlayerFromId(source)


end)

RegisterCommand("getcoords", function(source, args)
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)
	print(xPlayer.getCoords2())

end)







RegisterCommand("givemoney", function(source, args)

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == "admin" then
		xPlayer.setMoney(1000)
	else
		print('No tienes permisos para usar este comando')
	end

end)



RegisterCommand("destroymoney", function(source, args)

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == "admin" then
		xPlayer.giveMoney(args[1])
	else
		print('No tienes permisos para usar este comando')
	end

end)