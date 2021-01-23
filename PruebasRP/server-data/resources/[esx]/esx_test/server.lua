
-- Funcion para todos.
RegisterCommand("oxinfo", function(source)
	TriggerClientEvent("esx_test:oxicity", source)

	-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	
	-- local xPlayer = ESX.GetPlayerFromId(source)


end)


RegisterCommand("givemoney", function(source, args)

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == "admin" then
		xPlayer.giveMoney(args[1])
	else
		print('No tienes permisos para usar este comando....Admin, mi lancha :c')
	end

end)



RegisterCommand("destroymoney", function(source, args)

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == "admin" then
		xPlayer.giveMoney(args[1])
	else
		print('No tienes permisos para usar este comando......')
	end

end)