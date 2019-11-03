local rob = false
local robbers = {}
local CopsConnected  = 0
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end


cabinet1robbed = false
cabinet2robbed = false
cabinet3robbed = false
cabinet4robbed = false
cabinet5robbed = false
cabinet6robbed = false
cabinet7robbed = false
cabinet8robbed = false
cabinet9robbed = false
cabinet10robbed = false
cabinet11robbed = false
cabinet12robbed = false
cabinet13robbed = false
cabinet14robbed = false
cabinet15robbed = false
cabinet16robbed = false
cabinet17robbed = false
cabinet18robbed = false
cabinet19robbed = false
cabinet20robbed = false

resettimer = GetGameTimer()
RegisterServerEvent('srvanrob:cabinet')
AddEventHandler('srvanrob:cabinet', function(cabinetno)
	local _source = source
	--local xPlayers = ESX.GetPlayers()
	print("cabno",cabinetno)
	canrob = false
if cabinetno == 1 then
if cabinet1robbed == false then
cabinet1robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet1robbed)
canrob = true
end
end
if cabinetno == 2 then
if cabinet2robbed == false then
cabinet2robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet2robbed)
canrob = true
end
end
if cabinetno == 3 then
if cabinet3robbed == false then
cabinet3robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet3robbed)
canrob = true
end
end
if cabinetno == 4 then
if cabinet4robbed == false then
cabinet4robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet4robbed)
canrob = true
end
end
if cabinetno == 5 then
if cabinet5robbed == false then
cabinet5robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet5robbed)
canrob = true
end
end
if cabinetno == 6 then
if cabinet6robbed == false then
cabinet6robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet6robbed)
canrob = true
end
end
if cabinetno == 7 then
if cabinet7robbed == false then
cabinet7robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet7robbed)
canrob = true
end
end
if cabinetno == 8 then
if cabinet8robbed == false then
cabinet8robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet8robbed)
canrob = true
end
end
if cabinetno == 9 then
if cabinet9robbed == false then
cabinet9robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet9robbed)
canrob = true
end
end
if cabinetno == 10 then
if cabinet10robbed == false then
cabinet10robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet10robbed)
canrob = true
end
end
if cabinetno == 11 then
if cabinet11robbed == false then
cabinet11robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet11robbed)
canrob = true
end
end
if cabinetno == 12 then
if cabinet12robbed == false then
cabinet12robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet12robbed)
canrob = true
end
end
if cabinetno == 13 then
if cabinet13robbed == false then
cabinet13robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet13robbed)
canrob = true
end
end
if cabinetno == 14 then
if cabinet14robbed == false then
cabinet14robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet14robbed)
canrob = true
end
end
if cabinetno == 15 then
if cabinet15robbed == false then
cabinet15robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet15robbed)
canrob = true
end
end
if cabinetno == 16 then
if cabinet16robbed == false then
cabinet16robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet16robbed)
canrob = true
end
end
if cabinetno == 17 then
if cabinet17robbed == false then
cabinet17robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet17robbed)
canrob = true
end
end
if cabinetno == 18 then
if cabinet18robbed == false then
cabinet18robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet18robbed)
canrob = true
end
end
if cabinetno == 19 then
if cabinet19robbed == false then
cabinet19robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet19robbed)
canrob = true
end
end
if cabinetno == 20 then
if cabinet20robbed == false then
cabinet20robbed = true
TriggerClientEvent('srvanrob:setcabinate',-1,cabinetno,cabinet20robbed)
canrob = true
end
end
	print("can rob",canrob)
TriggerClientEvent('srvanrob:cabinet',_source,canrob)
resettimer = GetGameTimer()
end)

Citizen.CreateThread(function()    
	while true do
	Citizen.Wait(60000)
	if (GetGameTimer() - resettimer)/1000/ 60 > 30 then
	print"can rob"
cabinet1robbed = false
cabinet2robbed = false
cabinet3robbed = false
cabinet4robbed = false
cabinet5robbed = false
cabinet6robbed = false
cabinet7robbed = false
cabinet8robbed = false
cabinet9robbed = false
cabinet10robbed = false
cabinet11robbed = false
cabinet12robbed = false
cabinet13robbed = false
cabinet14robbed = false
cabinet15robbed = false
cabinet16robbed = false
cabinet17robbed = false
cabinet18robbed = false
cabinet19robbed = false
cabinet20robbed = false
TriggerClientEvent('srvanrob:reset',-1)
resettimer = GetGameTimer()

end
end
end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

local function Craft(source)

	SetTimeout(4000, function()

		if PlayersCrafting[source] == true and CopsConnected >= Config.RequiredCopsSell then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local JewelsQuantity = xPlayer.getInventoryItem('jewels').count

			if JewelsQuantity < 10 then 
				TriggerClientEvent('esx:showNotification', source, _U('notenoughgold'))
			else   
                xPlayer.removeInventoryItem('jewels', 10)
                Citizen.Wait(4000)
				xPlayer.addMoney(3000)
				
				Craft(source)
			end
		else
		TriggerClientEvent('esx:showNotification', source, _U('copsforsell'))
		end
	end)
end

RegisterServerEvent('srvanrob:givejewles')
AddEventHandler('srvanrob:givejewles', function(amount,amount2)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
   xPlayer.addInventoryItem('jewels',amount)	
   if amount2 > 0 then
   xPlayer.addInventoryItem('diamond',amount2)	
   end
   if CopsConnected < 3 then
   TriggerClientEvent('enableAIpolice',-1,true)
   end
	--TriggerClientEvent('esx:showNotification', _source, _U('goldsell'))
	--Craft(_source)
end)


RegisterServerEvent('srvanrob:selljewles')
AddEventHandler('srvanrob:selljewles', function()
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	local JewelsQuantity = xPlayer.getInventoryItem('jewels').count
	if JewelsQuantity > 9 then
   xPlayer.removeInventoryItem('jewels',10)	
   				xPlayer.addMoney(5000)   
	TriggerClientEvent('esx:showNotification', _source, 'recived $5000 ')	
	else
		TriggerClientEvent('esx:showNotification', _source, 'We only buy in batches of Ten')
	end

	--Craft(_source)
end)

RegisterServerEvent('srvanrob:setblip')
AddEventHandler('srvanrob:setblip', function(pos)
TriggerClientEvent('srvanrob:setblip',-1,pos)

end)

