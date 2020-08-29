function split(Instring, inSplitPattern )
outResults = { }
  local theStart = 1
  local theSplitStart, theSplitEnd = string.find( Instring, inSplitPattern, theStart )
  while theSplitStart do
    table.insert( outResults, string.sub( Instring, theStart, theSplitStart-1 ) )
    theStart = theSplitEnd + 1
    theSplitStart, theSplitEnd = string.find( Instring, inSplitPattern, theStart )
  end
  table.insert( outResults, string.sub( Instring, theStart ) )
  return outResults
end
game.StarterGui:SetCore("SendNotification", {
Title = "LightSpeed Loaded";
Text = "Enjoy!";
Icon = "";
Duration = 3;
})

function trim(s)
  return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end
game.Players.LocalPlayer.Chatted:Connect(function(a)
if a:sub(1,3) == "/f " then 
local b = a:sub(4,#a)
if a:sub(4,8) ~= "dance" then
local specc = trim(tostring(game:HttpGet("https://raw.githubusercontent.com/machport/machport.github.io/master/specialchar")))
local chat = specc  
for i = 1, #b do
    local c = b:sub(i,i)
    chat = chat..c.."ەە"
end
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chat,"All")
end
end
if a:sub(1,3) == "/e " then 
local b = a:sub(4,#a)
if a:sub(4,8) ~= "dance" then
local specc = trim(tostring(game:HttpGet("https://raw.githubusercontent.com/machport/machport.github.io/master/specialchar")))

local chat = specc  
for _,i in pairs(split(b," ")) do             
	str1 = string.sub(i, 1, (i:len() / 2) - (i:len() % 1))              
	str2 = string.sub(i, ((i:len() / 2) - (i:len() % 1)) + 1, i:len())             
	chat = chat..str1.." "..str2..specc
end       
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chat,"All")
end
end
end)

local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local e = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name=tostring( math.random(1,56263)), Parent=game.CoreGui})
local Frame = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.192157, 0.192157, 0.192157),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.000243888, 0, 0.35679015, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 351, 0, 255),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Frame',Parent = e})
local Title = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='LightSpeed Chat Bypass By machport',TextColor3=Color3.new(1, 1, 1),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.202149704, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Title',Parent = Frame})
local Desc = CreateInstance('TextLabel',{Font=Enum.Font.GothamBold,FontSize=Enum.FontSize.Size14,Text='/f (message) for method 1 or /e (message) for method 2',TextColor3=Color3.new(1, 1, 1),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.43406862, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 351, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Desc',Parent = Frame})
local Sound3 = Instance.new("Sound")
Sound3.Name = "Loaded"
Sound3.SoundId = "rbxassetid://216917652"
Sound3.Parent = game.CoreGui
Frame.Draggable = true
Frame.Active = true
for count=0,1,0.1 do
    wait(0.05)
    Frame.BackgroundTransparency = 1 - count
    Title.TextTransparency = 1- count
    Desc.TextTransparency = 1- count
end
game.CoreGui.Loaded:Play()
wait(1)
for count=0,1,0.1 do
    wait(0.05)
    Frame.BackgroundTransparency = count
    Title.TextTransparency =  count
    Desc.TextTransparency = count
end
Frame:Destroy()
Title:Destroy()
Desc:Destroy()
game:GetService("RunService").Stepped:Connect(function()
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetChildren()) do
if v:IsA("Frame") then
if v.TextLabel.Text == "You can't use Emotes here." then
wait(math.random(4,6)/100)
v:Destroy()
else
end
end
end
end)
