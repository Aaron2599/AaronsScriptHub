loadstring(game:HttpGet("https://raw.githubusercontent.com/machport/machport.github.io/master/LightSpeedcyb.lua"))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()



local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local hold=false

--settings
local keybind=Enum.KeyCode.E
local enablepconsole=false
local fov=360
local teamcheck=false

if enablepconsole then

else

end

if teamcheck then
   if #game.Teams:GetChildren()<2 then
       if enablepconsole then
          
       else
           
       end
       teamcheck=false
   end
end

function getnearest()
   local nearest
   local kanker=math.huge
   for i,v in next, game:GetService("Players"):GetChildren() do
       if v and v.Character and v~=game:GetService("Players").LocalPlayer and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health>0 then
           if teamcheck then
               if v.Team ~= game.Players.LocalPlayer.Team then
                   local worldPoint = v.Character.Head.Position
                   local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(worldPoint)
                   local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
                   if kanker>magnitude and onScreen and magnitude<fov then
                       kanker=magnitude
                       nearest=v
                   end
               end
           else
               local worldPoint = v.Character.Head.Position
               local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(worldPoint)
               local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
               if kanker>magnitude and onScreen and magnitude<fov then
                   kanker=magnitude
                   nearest=v
               end
           end
       end
   end
   return nearest
end

game:GetService("UserInputService").InputBegan:connect(function(input)
   if input.KeyCode == keybind then
       hold=true
       if enablepconsole then

       end
   end
end)

game:GetService("UserInputService").InputEnded:connect(function(input)
   if input.KeyCode == keybind then
       hold=false
       if enablepconsole then
           
       end
   end
end)

game:GetService("RunService").RenderStepped:connect(function()
   if hold then
       if getnearest() then
           local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(getnearest().Character.Head.Position)
           local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X,mouse.Y)).Magnitude
           local magnitudeX = mouse.X - vector.X
           local magnitudeY = mouse.Y - vector.Y
           mousemoverel(-magnitudeX*0.5,-magnitudeY*0.5)
           if enablepconsole then
              
           end
           wait(0.01)
       end
   end
end)
