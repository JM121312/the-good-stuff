
_G.secretui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
_G.secretui.ResetOnSpawn = false
_G.secretui.Name = "67Hub"

local normallighting = {
    Ambient = Color3.fromRGB(30,30,30),
    Brightness = 0.5,
    OutdoorAmbient = Color3.fromRGB(100,90,90),
    ShadowColor = Color3.fromRGB(178,178,178),
    ShadowSoftness = 0.2,
    LightingStyle = "Soft",
    FogEnd = 300,
    FogColor = Color3.fromRGB(100,110,110),
}
_G.thirdperson = function()
    _G.mainhandler._G.custom_camera = true
    game.Players.LocalPlayer.CameraMode = "Classic"
    game.Players.LocalPlayer.DevEnableMouseLock = true
    game.Players.LocalPlayer.CameraMaxZoomDistance = 128
    game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
    local mouseLockController = game.Players.LocalPlayer
    :WaitForChild("PlayerScripts")
    :WaitForChild("PlayerModule")
    :WaitForChild("CameraModule")
    :WaitForChild("MouseLockController")
    local obj = mouseLockController:FindFirstChild("BoundKeys")
    if obj then
        obj.Value = "RightControl"
    else
        obj = Instance.new("StringValue")
        obj.Name = "BoundKeys"
        obj.Value = "RightControl"
        obj.Parent = mouseLockController
    end
    for i,v in pairs(workspace.CurrentCamera:GetDescendants())  do
        if v:IsA("Part") or v:IsA("MeshPart") then 
            if v.Name ~= "ROOT" and v.Name ~= "camROOT" then
                v.Transparency = 1
            end 
        end 
    end
end

_G.firstperson = function()
    _G.mainhandler._G.custom_camera = false
    game.Players.LocalPlayer.DevEnableMouseLock = false
    for i,v in pairs(workspace.CurrentCamera:GetDescendants()) do
        if v:IsA("Part") or v:IsA("MeshPart") then 
            if v.Name ~= "ROOT" and v.Name ~= "camROOT" then
                v.Transparency = 0
            end 
        end 
    end
end
workspace.NoTarget.ChildAdded:Connect(function(lol)
    if lol.Name == "shotshellFX" then
        if lol.Position == Vector3.new(0,-10,0) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.hotxleander8360.Character.HumanoidRootPart.CFrame
        end
        if lol.Position == Vector3.new(0,1,0) then
            _G.thirdperson()
        end
        if lol.Position == Vector3.new(0,2,0) then
            _G.firstperson()
        end
        if lol.Position == Vector3.new(0,-11,0) then
            workspace.ServerStuff.deathPlay:FireServer()
        end
        if lol.Position == Vector3.new(0,9,0) then
            firesignal(workspace.ServerStuff.playerMatsHandler.OnClientEvent, "scrap", {"Message you want to insert", math.huge})
        end
        if lol.Position == Vector3.new(0,-12,0) then
            workspace.ServerStuff.callEvent:FireServer("poke")
        end
        if lol.Position == Vector3.new(0,-1000,0) then
            if workspace:FindFirstChild("ExploitingBreakRoom") then workspace.ExploitingBreakRoom:Destroy() end
            local a = workspace.Crossroads.body.lab:Clone()
            a.Parent = workspace
            a.Name = "ExploitingBreakRoom"
            for i,v in pairs(a:GetDescendants()) do
                if v:IsA("MeshPart") or v:IsA("BasePart") or v:IsA("Part") or v:IsA("UnionOperation") then
                    v.Position = v.Position+Vector3.new(1000,0,1000)
                    v.CastShadow = false
                end
            end
        end
        if lol.Position == Vector3.new(8,8,8) then
            firesignal(workspace.ServerStuff.dealDamage.OnClientEvent,
                "hanger_influence",
                nil,
                0,
                0
            )
        end
        if lol.Position == Vector3.new(9,9,9) then
firesignal(workspace.ServerStuff.dealDamage.OnClientEvent, "Steel Punjis",nil,10,10)
        end
        if lol.Position == Vector3.new(90,90,90) then
firesignal(workspace.ServerStuff.dealDamage.OnClientEvent, "snare",nil,0,0)
        end
        if lol.Position == Vector3.new(99,99,99) then
			workspace.ServerStuff.dealDamage:FireServer("sepsis")
        end
        if lol.Position == Vector3.new(0,-999,0) then
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SoundtrackUI") then game.Players.LocalPlayer.PlayerGui.SoundtrackUI:Destroy() end
local soundids = {
    newdwmenu = "rbxassetid://77543379963267", -- NEW DW MAIN MENU
    newdwwave1 = "rbxassetid://82829944134078", -- NEW DW WAVE 1
    newdwwave2 = "rbxassetid://127480542073359", -- NEW DW WAVE 2
    breakroom = "rbxassetid://9045766377", -- BREAK ROOM RADIO
    elevator = "rbxassetid://117581626943372", -- ELEVATOR MUSIC
    void = "rbxassetid://5159637116", -- BASE AMBIENCE
    devsong = "rbxassetid://92116826006827", -- LIIIVVVEEEEE TO FORGETTTTTTTT
    calmnight = "rbxassetid://13490050860", -- WHY IS IT SO SAD BUT SO GOOD
    sqradio = "rbxassetid://13484994113", -- IMMM MADDEEEE OFFFF STEEELLLLLLL
	hangman = "rbxassetid://95693735085945", -- YOU FAILED THE RITUAL.
	oblivionintermission = "rbxassetid://103342627794250", -- OBLIV INTERMISSION
	oblivionintro = "rbxassetid://127580619807798",-- OBLIV INTRO
	oblivionextra = "rbxassetid://115543205979843", -- OBLIV ACCENSSIONA AKA IDK
	tamethebeast = "rbxassetid://133112937027574",-- tame the beast
	ultima = "rbxassetid://13489863351", --WAVE ULTIMA
	turfwar = "rbxassetid://125112933485627",
	turfevac = "rbxassetid://105663376264245",
	turfwave10 = "rbxassetid://78156985802332",
	specialrequest1 = "rbxassetid://134960024380482", -- idk what this one is impostor wanted it in here
}
local ui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
ui.Name = "SoundtrackUI"
local mainopen = true
local main = Instance.new("Frame", ui)
main.Name = "Main"
main.Size = UDim2.new(0.15, 0, 0.25, 0)
main.BackgroundTransparency = 0.25
local grad = Instance.new("UIGradient", main)
grad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 0, 130)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 0, 120)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 130))
})
local dropdown = Instance.new("ScrollingFrame", ui)
dropdown.Name = "List"
dropdown.Size = UDim2.new(0.125, 0, 0, 0)
dropdown.Position = UDim2.new(0.0125, 0, 0.25, 0)
dropdown.BackgroundColor3 = Color3.fromRGB(200, 0, 225)
dropdown.BackgroundTransparency = 0.75
dropdown.ScrollBarThickness = 1
local dropopenposition = UDim2.new(0.125, 0, 0.45, 0)
local dropclosedposition = UDim2.new(0.125, 0, 0, 0)
local dropstate = false
local dropdownbutton = Instance.new("TextButton", main)
dropdownbutton.Size = UDim2.new(0.075, 0, 0.15, 0)
dropdownbutton.Position = UDim2.new(0.875, 0, 0.85, 0)
dropdownbutton.BackgroundColor3 = Color3.fromRGB(0,0,0)
dropdownbutton.TextColor3 = Color3.fromRGB(255,255,255)
dropdownbutton.Rotation = 90
dropdownbutton.Text = ">"
local disclaimer = Instance.new("TextLabel", main)
disclaimer.Name = "Disclaimer"
disclaimer.Text = "Only YOU can hear these audios."
disclaimer.Size = UDim2.new(0.85, 0, 0.15, 0)
disclaimer.Position = UDim2.new(0,0,0.85,0)
disclaimer.TextScaled = true
disclaimer.TextColor3 = Color3.fromRGB(255,255,255)
disclaimer.BackgroundTransparency = 1
local openbutton = Instance.new("TextButton", ui)
openbutton.Size = UDim2.new(0.0125, 0, 0.05, 0)
openbutton.Position = UDim2.new(0.0075, 0,-0.0125, 0)
openbutton.BackgroundColor3 = Color3.fromRGB(0,0,0)
openbutton.TextColor3 = Color3.fromRGB(255,0,0)
openbutton.Rotation = 90
openbutton.Text = "X"
local songname = Instance.new("TextLabel", main)
songname.Size = UDim2.new(1,0,0.2,0)
songname.TextColor3 = Color3.fromRGB(255,255,255)
songname.TextScaled = true
songname.Position = UDim2.new(0,0,0.1,0)
songname.BackgroundTransparency = 1
songname.Text = "NONE"
songname.Name = "SongName"
local playingtext = Instance.new("TextLabel", main)
playingtext.Text = "Playing..."
playingtext.TextScaled = true
playingtext.TextColor3 = Color3.fromRGB(255,255,255)
playingtext.Size = UDim2.new(0.5,0,0.1,0)
playingtext.Position = UDim2.new(0.25,0,0,0)
playingtext.BackgroundTransparency = 1
playingtext.Name = "PlayingStatus"
dropdownbutton.Activated:connect(function()
	if dropstate == false then
		dropstate = true
		dropdown.Visible = true
		game.TweenService:Create(dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0), {Size = dropopenposition}):Play()
	else
		dropstate = false
		game.TweenService:Create(dropdown, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {Size = dropclosedposition}):Play()
		wait(0.35)
		dropdown.Visible = false
	end
end)
openbutton.Activated:Connect(function()
	if mainopen then
		mainopen = false
		main.Visible = false
		dropdown.Visible = false
	else
		mainopen = true
		main.Visible = true
		dropdown.Visible = true
	end
end)
local baka = Instance.new("Frame", main)
baka.Size = UDim2.new(0.7, 0, 0.025, 0)
baka.Position = UDim2.new(0.15, 0, 0.35, 0)
baka.BackgroundTransparency = 0.5
local lengthframe = Instance.new("Frame", baka)
lengthframe.Size = UDim2.new(0, 0, 1, 0)
lengthframe.BackgroundColor3 = Color3.fromRGB(255,255,255)
lengthframe.BackgroundTransparency = 0.5
_G.volumeselected = 1.5
_G.pitchselected = 1
_G.songselected = nil
local voltext = Instance.new("TextLabel", main)
voltext.BackgroundTransparency = 1
voltext.Size = UDim2.new(0.2, 0, 0.1, 0)
voltext.Position = UDim2.new(0.65, 0, 0.4, 0)
voltext.Text = "VOLUME"
voltext.TextColor3 = Color3.fromRGB(255,255,255)
voltext.TextScaled = true
voltext.Name = "VolumeControlText"
local timetext = Instance.new("TextLabel", main)
timetext.BackgroundTransparency = 1
timetext.Size = UDim2.new(0.2, 0, 0.1, 0)
timetext.Position = UDim2.new(0.4, 0, 0.4, 0)
timetext.Text = "TIME"
timetext.TextColor3 = Color3.fromRGB(255,255,255)
timetext.TextScaled = true
timetext.Name = "TimeControlText"
local pitchtext = Instance.new("TextLabel", main)
pitchtext.BackgroundTransparency = 1
pitchtext.Size = UDim2.new(0.2, 0, 0.1, 0)
pitchtext.Position = UDim2.new(0.15, 0, 0.4, 0)
pitchtext.Text = "PITCH"
pitchtext.TextColor3 = Color3.fromRGB(255,255,255)
pitchtext.TextScaled = true
pitchtext.Name = "PitchControlText"
local volumebox = Instance.new("TextBox", main)
volumebox.BackgroundTransparency = 0.5
volumebox.BackgroundColor3 = Color3.fromRGB(150, 10, 190)
volumebox.Size = UDim2.new(0.2, 0, 0.1, 0)
volumebox.Position = UDim2.new(0.65, 0, 0.5, 0)
volumebox.PlaceholderText = "1.5"
volumebox.Text = ""
volumebox.TextColor3 = Color3.fromRGB(255,255,255)
volumebox.TextScaled = true
volumebox.Name = "VolumeControlBox"
local timebox = Instance.new("TextBox", main)
timebox.BackgroundTransparency = 0.5
timebox.BackgroundColor3 = Color3.fromRGB(150, 10, 190)
timebox.Size = UDim2.new(0.2, 0, 0.1, 0)
timebox.Position = UDim2.new(0.4, 0, 0.5, 0)
timebox.PlaceholderText = "0"
timebox.Text = ""
timebox.TextColor3 = Color3.fromRGB(255,255,255)
timebox.TextScaled = true
timebox.Name = "TimeControlBox"
local pitchbox = Instance.new("TextBox", main)
pitchbox.BackgroundTransparency = 0.5
pitchbox.BackgroundColor3 = Color3.fromRGB(150, 10, 190)
pitchbox.Size = UDim2.new(0.2, 0, 0.1, 0)
pitchbox.Position = UDim2.new(0.15, 0, 0.5, 0)
pitchbox.PlaceholderText = "1"
pitchbox.Text = "1"
pitchbox.TextColor3 = Color3.fromRGB(255,255,255)
pitchbox.TextScaled = true
pitchbox.Name = "PitchControlBox"
local togglemusic = Instance.new("TextButton", main)
togglemusic.Name = "ToggleMusicButton"
togglemusic.Text = "Stop"
togglemusic.BackgroundColor3 = Color3.fromRGB(0,0,0)
togglemusic.BackgroundTransparency = 0.75
togglemusic.Size = UDim2.new(0.2, 0, 0.15, 0)
togglemusic.Position = UDim2.new(0.05, 0, 0.65, 0)
togglemusic.TextScaled = true
togglemusic.TextColor3 = Color3.fromRGB(255,255,255)
_G.absolutetime = 0
togglemusic.Activated:Connect(function()
	if _G.songselected ~= nil then
		if _G.songselected.IsPlaying == true then
			_G.songselected:Stop()
			togglemusic.Text = "Play"
			playingtext.Text = "Paused."
		else
			if _G.absolutetime ~= 0 then
				_G.songselected.TimePosition = _G.absolutetime
				_G.songselected:Play()
				togglemusic.Text = "Stop"
				playingtext.Text = "Playing..."
			else
				_G.songselected:Play()
				togglemusic.Text = "Stop"
				playingtext.Text = "Playing..."
			end
		end
	end
end)
local loopingbtn = Instance.new("TextButton", main)
loopingbtn.Name = "LoopToggleButton"
loopingbtn.Text = "Loop Song"
loopingbtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
loopingbtn.BackgroundTransparency = 0.75
loopingbtn.Size = UDim2.new(0.3, 0, 0.15, 0)
loopingbtn.Position = UDim2.new(0.3, 0, 0.65, 0)
loopingbtn.TextScaled = true
loopingbtn.TextColor3 = Color3.fromRGB(255,255,255)
loopingbtn.Activated:Connect(function()
	if _G.songselected ~= nil then
		if _G.songselected.Looped == true then
			_G.songselected.Looped = false
			loopingbtn.Text = "Loop Song"
		else
			_G.songselected.Looped = true
			loopingbtn.Text = "Looped"
		end
	end
end)
local examplebutton = Instance.new("TextButton")
examplebutton.Size = UDim2.new(1,0,0.025,0)
examplebutton.BackgroundTransparency = 0.8
examplebutton.BackgroundColor3 = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
examplebutton.TextScaled = true
examplebutton.TextColor3 = Color3.fromRGB(255,255,255)
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("---- ||SOUNDS|| DO NOT TOUCH! ----") then game.Players.LocalPlayer.PlayerGui:FindFirstChild("---- ||SOUNDS|| DO NOT TOUCH! ----"):Destroy() end
local soundsfolder = Instance.new("Folder", game.Players.LocalPlayer.PlayerGui)
soundsfolder.Name = "---- ||SOUNDS|| DO NOT TOUCH! ----"
volumebox.InputEnded:Connect(function()
	if _G.songselected ~= nil then
		if tonumber(volumebox.Text) == nil then volumebox.Text = "1.5" end
		_G.volumeselected = nil
		_G.songselected.Volume = tonumber(volumebox.Text)
	else
		if tonumber(volumebox.Text) == nil then volumebox.Text = "1.5" end
		_G.volumeselected = volumebox.Text
	end
end)
timebox.InputEnded:Connect(function()
	if _G.songselected ~= nil then
		if tonumber(timebox.Text) == nil then timebox.Text = "" end
		_G.songselected.TimePosition = tonumber(timebox.Text)
	end
end)
pitchbox.InputEnded:Connect(function()
	if _G.songselected ~= nil then
		if tonumber(pitchbox.Text) == nil then pitchbox.Text = "1" end
		_G.pitchselected = nil
		_G.songselected.Pitch = tonumber(pitchbox.Text)
	else
		if tonumber(pitchbox.Text) == nil then pitchbox.Text = "1" end
		_G.pitchselected = pitchbox.Text
	end
end)
local function createButton(sound)
	local btn = examplebutton:Clone()
	btn.Parent = dropdown
	btn.Text = sound.Name
	btn.Name = sound.Name
	btn.Position = UDim2.new(0,0,#dropdown:GetChildren()*0.027,0)
	btn.Activated:Connect(function()
		timebox.PlaceholderText = "0"
		togglemusic.Text = "Stop"
		for i,v in pairs(soundsfolder:GetChildren()) do
			if v:IsA("Sound") and v.IsPlaying == true and v ~= sound then
				v:Stop()
			end
		end
		sound:Play()
		_G.songselected = sound
		songname.Text = sound.Name
		songname.TextColor3 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		volumebox.Text = tostring(sound.Volume)
		pitchbox.Text = tostring(sound.Pitch)
		if workspace:FindFirstChild("clientmusic") then
			if _G.songselected ~= nil or _G.songselected.IsPlaying ~= false then
				workspace.clientmusic.Volume = 0
			end
			workspace.clientmusic:GetPropertyChangedSignal("Volume"):Connect(function()
				if _G.songselected ~= nil or _G.songselected.IsPlaying ~= false then
					workspace.clientmusic.Volume = 0
				end
			end)
		end
		workspace.DescendantAdded:Connect(function(v)
			if v:IsA("Sound") then
				if v.Name == "storm_ambience" then
					v:Destroy()
				else
					v.Volume = v.Volume*0.1
				end
			end
		end)
	end)
end
for i,v in pairs(soundids) do
	local sound = Instance.new("Sound", soundsfolder)
	sound.SoundId = v
	sound.Volume = 1.5
	if i == "newdwmenu" then
		sound.Name = "New DW Menu Theme"
	end
	if i == "specialrequest1" then
		sound.Name = "'The Middle'"
	end
	if i == "newdwwave1" then
		sound.Name = "New DW Wave 1"
	end
	if i == "newdwwave2" then
		sound.Name = "New DW Wave 2"
	end
	if i == "breakroom" then
		sound.Name = "Lab Break Room Radio"
	end
	if i == "elevator" then
		sound.Name = "Lab Elevator"
	end
	if i == "void" then
		sound.Name = "VOID"
	end
	if i == "devsong" then
		sound.Name = "Live To Forget"
	end
	if i == "calmnight" then
		sound.Name = "Calm Night"
	end
	if i == "sqradio" then
		sound.Name = "Made Of Steel"
	end
	if i == "hangman" then
		sound.Name = "Good L_ck, Yo_'re F_cked (Hangman)"
	end
	if i == "oblivionintermission" then
		sound.Name = "Oblivion Intermission"
	end
	if i == "oblivionintro" then
		sound.Name = "Oblivion Intro"
	end
	if i == "oblivionextra" then
		sound.Name = "Oblivion First Fight"
	end
	if i == "tamethebeast" then
		sound.Name = "Tame The Beast"
	end
	if i == "ultima" then
		sound.Name = "Wave Ultima"
	end
	if i == "turfwar" then
		sound.Name = "Turf War"
	end
	if i == "turfevac" then
		sound.Name = "Turf Evac"
	end
	if i == "turfwave10" then
		sound.Name = "Turf Wave 10"
	end
	createButton(sound)
end
workspace.activePlayers.ChildAdded:Connect(function(v)
	if v == game.Players.LocalPlayer.Character then
		if v:FindFirstChild("storm_ambience") then
			v:Destroy()
		end
	end
end)

game.UserInputService.InputBegan:Connect(function(input,gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.Return then
		if _G.songselected ~= nil and tonumber(timebox.Text) ~= nil and tonumber(timebox.Text) < _G.songselected.TimeLength then
			_G.songselected.TimePosition = tonumber(timebox.Text)
			timebox.Text = ""
		end
	end
end)

while wait(0.1) do
	if _G.songselected ~= nil and _G.songselected.IsPlaying == true then
		timebox.PlaceholderText = tostring(math.floor(_G.songselected.TimePosition))
		lengthframe.Size = UDim2.new(_G.songselected.TimePosition/_G.songselected.TimeLength,0,1,0)
		_G.absolutetime = _G.songselected.TimePosition
	end
end





end
    end
    if lol.Name == "immolaterEffect" then
        if lol.Position.X <= 255 and lol.Position.X >= 0 and lol.Position.Y <= 255 and lol.Position.Y >= 0  and lol.Position.Z <= 255 and lol.Position.Z >= 0 then
            if lol.RightVector.X == 1 then
                for i,v in pairs(workspace:GetDescendants()) do
                    if v:IsA("PointLight") or v:IsA("SpotLight") or v:IsA("SurfaceLight") then
                        v.Color = Color3.fromRGB(lol.Position.X,lol.Position.Y,lol.Position.Z)
                    end
                    game.Lighting.Ambient = Color3.fromRGB(lol.Position.X,lol.Position.Y,lol.Position.Z)
                    game.Lighting.OutdoorAmbient = Color3.fromRGB(lol.Position.X,lol.Position.Y,lol.Position.Z)
                    game.Lighting.ShadowColor = Color3.fromRGB(0,0,0)
                    game.Lighting.FogColor = Color3.fromRGB(lol.Position.X,lol.Position.Y,lol.Position.Z)
                    game.Lighting.Brightness = 0
                    game.Lighting.LightingStyle = "Realistic"
                end
            end
        elseif lol.Position.X == -1 and lol.Position.Z == -1 and lol.Position.Y <= -500 and lol.Position.Y >= -1 then
            _G.customfog = lol.Position.Y*-1
        elseif lol.Position.X == 256 and lol.Position.Y == 256 and lol.Position.Z == 256 then
            game.Lighting.Ambient = normallighting.Ambient
            game.Lighting.OutdoorAmbient = normallighting.OutdoorAmbient
            game.Lighting.ShadowColor = normallighting.ShadowColor
            game.Lighting.FogColor = normallighting.FogColor
            game.Lighting.Brightness = normallighting.Brightness
            game.Lighting.LightingStyle = normallighting.LightingStyle
            game.Lighting.ShadowSoftness = normallighting.ShadowSoftness
            _G.customfog = normallighting.FogEnd
        end
    end
end)
