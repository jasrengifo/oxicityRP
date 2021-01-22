ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('esx_license:getLicenses', source, function(licenses)
		TriggerClientEvent('esx_dmvschool:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('esx_dmvschool:addLicense')
AddEventHandler('esx_dmvschool:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('esx_dmvschool:loadLicenses', _source, licenses)
		end)
	end)
end)

RegisterNetEvent('esx_dmvschool:pay')
AddEventHandler('esx_dmvschool:pay', function(price)


	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)


	if xPlayer.getMoney()>=price then
		xPlayer.removeMoney(price)	
		TriggerClientEvent('esx:showNotification', _source, _U('you_paid_efectivo', ESX.Math.GroupDigits(price)))
	else
		xPlayer.removeBank(price)
		TriggerClientEvent('esx:showNotification', _source, _U('you_paid_bank', ESX.Math.GroupDigits(price)))
	end


	
end)
