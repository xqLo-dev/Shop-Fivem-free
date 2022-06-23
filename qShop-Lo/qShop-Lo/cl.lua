ESX = nil


local Shop = {   
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {50, 250, 90}, --[[R, G, B ]]Title = '~g~q~s~Shop'},
	Data = { currentMenu = "                                      ~g~q~s~Shop", GetPlayerName()},
  Events = { 
	onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
  PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)


      local btn = btn.name
          
      
if btn == "Pain" then  
   
  TriggerServerEvent('xqLos', 5, 'bread', 1)

end 

if btn == "Cookie" then  
   
  TriggerServerEvent('xqLos', 10, 'cookie', 1)

end 

if btn == "Tacos" then  
   
  TriggerServerEvent('xqLos', 20, 'taco', 1)

end 

if btn == "Muffin" then  
   
  TriggerServerEvent('xqLos', 12, 'muffin', 1)

end 

if btn == "Biscuit" then  
   
  TriggerServerEvent('xqLos', 10, 'biscuit', 1)

end 

if btn == "Eau" then  
   
  TriggerServerEvent('xqLos', 5, 'water', 1)

end 

if btn == "Ice-tea" then  
   
  TriggerServerEvent('xqLos', 20, 'icetea', 1)

end 

if btn == "Coca-Cola" then  
   
  TriggerServerEvent('xqLos', 20, 'water', 1)

end 

if btn == "Sprite" then  
   
  TriggerServerEvent('xqLos', 15, 'water', 1)

end 

if btn == "Café" then  
   
  TriggerServerEvent('xqLos', 12, 'water', 1)

end 

if btn == "Téléphone" then  
   
  TriggerServerEvent('xqLos', 150, 'phone', 1)

end 

if btn == "Carte sim" then  
   
  TriggerServerEvent('xqLos', 50, 'sim', 1)

end 

if btn == "GPS" then  
   
  TriggerServerEvent('xqLos', 30, 'gps', 1)

end 

if btn == "Canne à pêche" then  
   
  TriggerServerEvent('xqLos', 50, 'canneapeche', 1)

end 

if btn == "Montre" then  
   
  TriggerServerEvent('xqLos', 150, 'montre', 1)

end 

if btn == "Nourriture" then  
   
  OpenMenu('Voici la ~g~nourriture~s~ disponible')

end

if btn == "Boissons" then
  
  OpenMenu('Voici les ~g~boissons~s~ disponible')

end
  
if btn == "Utilitaire" then
  
  OpenMenu('Ces objets peuvent vous êtres ~g~utiles !')
  

end
if btn == "Divers" then
  
  OpenMenu('Voici ~g~divers~s~ objets !')
    
end

end,     
	},    
	
  
  Menu = {  
		["                                      ~g~q~s~Shop"] = { 
			b = { 
        {name = "Nourriture", ask = "→", askX = true},
        {name = "Boissons", ask = "→", askX = true},
        {name = "Utilitaire", ask = "→", askX = true},
        {name = "Divers", ask = "→", askX = true},
			}  
		},
    ["Voici la ~g~nourriture~s~ disponible"] = { 
			b = { 
        {name = "Pain", ask = "~g~$5", askX = true},
        {name = "Cookie", ask = "~g~$10", askX = true},    
        {name = "Tacos", ask = "~g~$20", askX = true},    
        {name = "Muffin", ask = "~g~$12", askX = true},    
        {name = "Biscuit", ask = "~g~$10", askX = true},            
			}  
		},
    ["Voici les ~g~boissons~s~ disponible"] = { 
			b = { 
        {name = "Eau", ask = "~g~$5", askX = true},
        {name = "Ice-tea", ask = "~g~$20", askX = true},  
        {name = "Coca-Cola", ask = "~g~$20", askX = true},  
        {name = "Sprite", ask = "~g~$15", askX = true},  
        {name = "Café", ask = "~g~$12", askX = true},          
			}  
		},
    ["Ces objets peuvent vous êtres ~g~utiles !"] = { 
			b = { 
        {name = "Téléphone", ask = "~g~$150", askX = true},
        {name = "Carte sim", ask = "~g~$50", askX = true}, 
        {name = "GPS", ask = "~g~$30", askX = true},     
			}  
		},
    ["Voici ~g~divers~s~ objets !"] = { 
			b = {   
        {name = "Canne è pêche", ask = "~g~$50", askX = true},
        {name = "Montre", ask = "~g~$150", askX = true},    
			}  
		},
	}
}    


local xqLo = {
  --{x = 25.651, y= -1346.872, z=29.49} Pour rajouter un shop vous devez rajouter la pos ici
  {x = 25.651, y= -1346.872, z=29.49},
  {x = -47.8, y= -1757.6, z=29.4}
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0) 
      for k in pairs(xqLo) do
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)

          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, xqLo[k].x, xqLo[k].y, xqLo[k].z)
          if dist <= 2.0 then 
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour accéder au ~g~Shop !")
              if IsControlJustPressed(1,38) then 			
               CreateMenu(Shop)    
                  end
              end 
          end
      end
  end)