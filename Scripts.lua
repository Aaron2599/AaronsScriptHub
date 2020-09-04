 -- loadstring(game:HttpGet("https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/Scripts.lua"))()  

icecmd = 1 
esp = 1 
aim = 1 
infiniteyield = 1

-- Game Specific Hack
if game.PlaceId == 185655149 then -- BloxBurg
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/Bloxburg_Max_stats_and_freegampass"))()
aim = 0 
infiniteyield = 0
icecmd = 0
end

if game.PlaceId == 850917308  then -- lightsaber battles
loadstring(game:HttpGet("https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/Starwarslightsabersbattlesgui.lua"))()
end

if game.PlaceId == 5323592216  then -- Site 67
loadstring(game:HttpGet("https://gist.githubusercontent.com/GuzZyWilly/622836d5371a580b5bbf9e119f9de150/raw/0be92f374888ccc19cf47503b7b2504f72a54262/gistfile1.txt"))()
end

if game.PlaceId == 3527629287 then -- BIG_Paintball
loadstring(game:HttpGet("https://www.pastebin.com/raw/PuaaGKsT"))()
 esp = 0
 aim =  0
end
   
  
  

loadstring(game:HttpGet('https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/Spy_Chat.lua'))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/LightSpeedcyb.lua"))()


if esp == 1 then 
loadstring(game:HttpGet('https://ic3w0lf.xyz/rblx/protoesp.lua'))()
end 

if aim ==1 then 
loadstring(game:HttpGet('https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/aimbot.lua'))()
 end


 if infiniteyield == 1 then 
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

if icecmd == 1 then 
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/CLAIM_ADMIN_AND_KARAMBIT.lua'))()
 end 

-- game end specific hacks 
if game.PlaceId == 237590761 or 2375906557 or 290815963 then -- ApocolapseRising Script
loadstring(game:HttpGet("https://raw.githubusercontent.com/Aaron2599/AaronsScriptHub/master/RisingGUI.lua"))()
end



