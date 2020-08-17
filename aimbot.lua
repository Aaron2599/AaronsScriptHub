local e = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name=tostring( math.random(1,56263)), Parent=game.CoreGui})
local Frame = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.192157, 0.192157, 0.192157),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.390243888, 0, 0.345679015, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 351, 0, 255),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Frame',Parent = e})
local Title = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='LightSpeed Chat Bypass By machport',TextColor3=Color3.new(1, 1, 1),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.202149704, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Title',Parent = Frame})
local Desc = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='Press F To use aimbot',TextColor3=Color3.new(1, 1, 1),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.43406862, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 351, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Desc',Parent = Frame})


--settings
local keybind=Enum.KeyCode.F
local enablepconsole=false
local fov=180
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
