-----------------------------------------------------------------------------------------------
--SCRIPT CREADO PARA EL SERVIDOR DE FIVEM DE PLATA O PLOMO COMUNIDAD GAMER.
--SCRIPT CREADO TOTALMENTE POR THEMAYKELLLL1 [ MIGUEL ANGEL LOPEZ REYES ].
--PLATA O PLOMO COMUNIDAD GAMER ACEPTA NO VENDER / REGALAR / PASAR ESTOS SCRIPTS A OTRAS PERSONAS O COMUNIDADES
--SIN PERMISOS DEL CREADOR DE EL SCRIPT.
-----------------------------------------------------------------------------------------------






function getTarea()
	local tareas = MySQL.Sync.fetchAll('SELECT * FROM contable_tareas')
	for i=1, #tareas, 1 do

		return tareas[i].id_tarea
	end
	
end


RegisterServerEvent('esx_contable:get_tarea')
AddEventHandler('esx_contable:get_tarea',function()
	print('mierda')
	TriggerClientEvent("esx_contable:mostrarTarea")

end)

