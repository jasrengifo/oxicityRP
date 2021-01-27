
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

	elseif args[1] == "gopostal" then
		coords = {x=85.4, y=106.9, z=79.2}
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
		xPlayer.giveMoney(args[1])
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