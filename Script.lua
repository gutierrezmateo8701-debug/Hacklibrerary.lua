local _1=game:GetService("CoreGui")local _2=game:GetService("Players")local _3=_2.LocalPlayerlocal _4=game:GetService("UserInputService")if _1:FindFirstChild("DeltaCompleteGUI")then _1.DeltaCompleteGUI:Destroy()end
if _1:FindFirstChild("DeltaNotifs")then _1.DeltaNotifs:Destroy()end
local _5=Instance.new("ScreenGui")_5.Name="DeltaCompleteGUI"_5.Parent=_1
local _6=Instance.new("Frame")_6.Size=UDim2.new(0,360,0,260)_6.Position=UDim2.new(0.5,-180,0.5,-130)_6.BackgroundColor3=Color3.fromRGB(24,24,28)_6.BorderSizePixel=0
_6.Active=true
_6.Draggable=true
_6.Parent=_5
Instance.new("UICorner",_6).CornerRadius=UDim.new(0,8)
local _7=Instance.new("Frame")_7.Size=UDim2.new(1,0,0,30)_7.BackgroundColor3=Color3.fromRGB(32,32,38)_7.BorderSizePixel=0
_7.Parent=_6
Instance.new("UICorner",_7).CornerRadius=UDim.new(0,8)
local _8=Instance.new("TextLabel")_8.Size=UDim2.new(0,200,1,0)_8.Position=UDim2.new(0,10,0,0)_8.BackgroundTransparency=1
_8.TextColor3=Color3.fromRGB(255,255,255)_8.TextSize=13
_8.Font=Enum.Font.SourceSansBold
_8.TextXAlignment=Enum.TextXAlignment.Left
_8.Text="Delta Script Protegido"
_8.Parent=_7
task.spawn(function()
local _9=0
while _5.Parent do
_9=(_9+1)%360
_8.TextColor3=Color3.fromHSV(_9/360,1,1)
task.wait(0.05)
end
end)
local _10=Instance.new("TextButton")_10.Size=UDim2.new(0,25,0,25)_10.Position=UDim2.new(1,-28,0.5,-12)_10.BackgroundColor3=Color3.fromRGB(220,60,60)_10.TextColor3=Color3.fromRGB(255,255,255)_10.TextSize=12
_10.Font=Enum.Font.SourceSansBold
_10.Text="X"
_10.Parent=_7
Instance.new("UICorner",_10).CornerRadius=UDim.new(0,4)
_10.MouseButton1Click:Connect(function()
_5:Destroy()
if _1:FindFirstChild("DeltaNotifs")then
_1.DeltaNotifs:Destroy()
end
end)
local _11=Instance.new("TextButton")_11.Size=UDim2.new(0,25,0,25)_11.Position=UDim2.new(1,-58,0.5,-12)_11.BackgroundColor3=Color3.fromRGB(60,60,70)_11.TextColor3=Color3.fromRGB(255,255,255)_11.TextSize=12
_11.Font=Enum.Font.SourceSansBold
_11.Text="-"
_11.Parent=_7
Instance.new("UICorner",_11).CornerRadius=UDim.new(0,4)
local _12=Instance.new("Frame")_12.Size=UDim2.new(1,0,1,-30)_12.Position=UDim2.new(0,0,0,30)_12.BackgroundTransparency=1
_12.Parent=_6
local _13=false
_11.MouseButton1Click:Connect(function()
_13=not _13
_12.Visible=not _13
_6.Size=_13 and UDim2.new(0,360,0,30)or UDim2.new(0,360,0,260)
_11.Text=_13 and "+" or "-"
end)
local _14=Instance.new("ScreenGui")_14.Name="DeltaNotifs"
_14.Parent=_1
local function _15(_16)
local _17=Instance.new("TextButton")_17.Size=UDim2.new(0,240,0,45)_17.Position=UDim2.new(1,-250,1,-60)_17.BackgroundColor3=Color3.fromRGB(35,35,42)_17.TextColor3=Color3.fromRGB(255,255,255)_17.TextSize=12
_17.Font=Enum.Font.SourceSansBold
_17.Text="🔔 ".._16.."\n(Presiona para cerrar)"
_17.Parent=_14
Instance.new("UICorner",_17).CornerRadius=UDim.new(0,6)
_17.MouseButton1Click:Connect(function()
_17:Destroy()
end)
task.delay(4,function()
if _17 and _17.Parent then
_17:Destroy()
end
end)
end
local _18=Instance.new("Frame")_18.Size=UDim2.new(1,-16,0,25)_18.Position=UDim2.new(0,8,0,8)_18.BackgroundTransparency=1
_18.Parent=_12
local _19=Instance.new("TextButton")_19.Size=UDim2.new(0.5,-4,1,0)_19.BackgroundColor3=Color3.fromRGB(45,45,55)_19.TextColor3=Color3.fromRGB(255,255,255)_19.TextSize=12
_19.Font=Enum.Font.SourceSansBold
_19.Text="Controles"
_19.Parent=_18
Instance.new("UICorner",_19).CornerRadius=UDim.new(0,4)
local _20=Instance.new("TextButton")_20.Size=UDim2.new(0.5,-4,1,0)_20.Position=UDim2.new(0.5,4,0,0)_20.BackgroundColor3=Color3.fromRGB(30,30,35)_20.TextColor3=Color3.fromRGB(150,150,150)_20.TextSize=12
_20.Font=Enum.Font.SourceSansBold
_20.Text="Ajustes & UI"
_20.Parent=_18
Instance.new("UICorner",_20).CornerRadius=UDim.new(0,4)
local _21=Instance.new("ScrollingFrame")_21.Size=UDim2.new(1,-16,1,-45)_21.Position=UDim2.new(0,8,0,38)_21.BackgroundTransparency=1
_21.CanvasSize=UDim2.new(0,0,0,250)_21.ScrollBarThickness=4
_21.Visible=true
_21.Parent=_12
local _22=Instance.new("ScrollingFrame")_22.Size=UDim2.new(1,-16,1,-45)_22.Position=UDim2.new(0,8,0,38)_22.BackgroundTransparency=1
_22.CanvasSize=UDim2.new(0,0,0,250)_22.ScrollBarThickness=4
_22.Visible=false
_22.Parent=_12
_19.MouseButton1Click:Connect(function()
_21.Visible=true
_22.Visible=false
_19.BackgroundColor3=Color3.fromRGB(45,45,55)
_19.TextColor3=Color3.fromRGB(255,255,255)
_20.BackgroundColor3=Color3.fromRGB(30,30,35)
_20.TextColor3=Color3.fromRGB(150,150,150)
end)
_20.MouseButton1Click:Connect(function()
_21.Visible=false
_22.Visible=true
_20.BackgroundColor3=Color3.fromRGB(45,45,55)
_20.TextColor3=Color3.fromRGB(255,255,255)
_19.BackgroundColor3=Color3.fromRGB(30,30,35)
_19.TextColor3=Color3.fromRGB(150,150,150)
end)
local _23=Instance.new("TextButton")_23.Size=UDim2.new(1,0,0,35)_23.Position=UDim2.new(0,0,0,10)_23.BackgroundColor3=Color3.fromRGB(30,30,38)_23.Text=""
_23.Parent=_21
Instance.new("UICorner",_23).CornerRadius=UDim.new(0,6)
local _24=Instance.new("TextLabel")_24.Size=UDim2.new(0.7,0,1,0)_24.Position=UDim2.new(0,10,0,0)_24.BackgroundTransparency=1
_24.TextColor3=Color3.fromRGB(255,255,255)_24.TextSize=12
_24.Font=Enum.Font.SourceSansBold
_24.TextXAlignment=Enum.TextXAlignment.Left
_24.Text="Activar Toggle"
_24.Parent=_23
local _25=Instance.new("Frame")_25.Size=UDim2.new(0,18,0,18)_25.Position=UDim2.new(1,-28,0.5,-9)_25.BackgroundColor3=Color3.fromRGB(180,50,50)_25.Parent=_23
Instance.new("UICorner",_25).CornerRadius=UDim.new(1,0)
local _26=false
_23.MouseButton1Click:Connect(function()
_26=not _26
_25.BackgroundColor3=_26 and Color3.fromRGB(50,200,50)or Color3.fromRGB(180,50,50)
_15("Toggle: "..tostring(_26))
end)
local _27=Instance.new("Frame")_27.Size=UDim2.new(1,0,0,45)_27.Position=UDim2.new(0,0,0,55)_27.BackgroundColor3=Color3.fromRGB(30,30,38)_27.Parent=_21
Instance.new("UICorner",_27).CornerRadius=UDim.new(0,6)
local _28=Instance.new("TextLabel")_28.Size=UDim2.new(1,-10,0,20)_28.Position=UDim2.new(0,10,0,2)_28.BackgroundTransparency=1
_28.TextColor3=Color3.fromRGB(255,255,255)_28.TextSize=12
_28.Font=Enum.Font.SourceSansBold
_28.TextXAlignment=Enum.TextXAlignment.Left
_28.Text="Velocidad: 16"
_28.Parent=_27
local _29=Instance.new("TextButton")_29.Size=UDim2.new(1,-20,0,8)_29.Position=UDim2.new(0,10,0,28)_29.BackgroundColor3=Color3.fromRGB(50,50,60)_29.Text=""
_29.Parent=_27
Instance.new("UICorner",_29).CornerRadius=UDim.new(1,0)
local _30=Instance.new("Frame")_30.Size=UDim2.new(0.2,0,1,0)_30.BackgroundColor3=Color3.fromRGB(0,120,215)_30.Parent=_29
Instance.new("UICorner",_30).CornerRadius=UDim.new(1,0)
local _31=false
_29.MouseButton1Down:Connect(function()_31=true end)
_4.InputEnded:Connect(function(_32)
if _32.UserInputType==Enum.UserInputType.MouseButton1 or _32.UserInputType==Enum.UserInputType.Touch then
_31=false
end
end)
_4.InputChanged:Connect(function(_32)
if _31 and (_32.UserInputType==Enum.UserInputType.MouseMovement or _32.UserInputType==Enum.UserInputType.Touch)then
local _33=math.clamp((_32.Position.X-_29.AbsolutePosition.X)/_29.AbsoluteSize.X,0,1)
_30.Size=UDim2.new(_33,0,1,0)
local _34=math.floor(_33*100)
_28.Text="Velocidad: ".._34
if _3.Character and _3.Character:FindFirstChild("Humanoid")then
_3.Character.Humanoid.WalkSpeed=_34
end
end
end)
local _35=Instance.new("TextBox")_35.Size=UDim2.new(1,0,0,35)_35.Position=UDim2.new(0,0,0,110)_35.BackgroundColor3=Color3.fromRGB(30,30,38)_35.TextColor3=Color3.fromRGB(255,255,255)_35.PlaceholderColor3=Color3.fromRGB(150,150,150)_35.PlaceholderText="Escribe texto aquí..."
_35.TextSize=12
_35.Font=Enum.Font.SourceSans
_35.Text=""
_35.Parent=_21
Instance.new("UICorner",_35).CornerRadius=UDim.new(0,6)
_35.FocusLost:Connect(function(_36)
if _36 then
_15("Mensaje: ".._35.Text)
end
end)
local _37=Instance.new("TextButton")_37.Size=UDim2.new(1,0,0,35)_37.Position=UDim2.new(0,0,0,155)_37.BackgroundColor3=Color3.fromRGB(30,30,38)_37.TextColor3=Color3.fromRGB(255,255,255)_37.TextSize=12
_37.Font=Enum.Font.SourceSansBold
_37.Text="Lista: [ Opción por defecto ]"
_37.Parent=_21
Instance.new("UICorner",_37).CornerRadius=UDim.new(0,6)
_37.MouseButton1Click:Connect(function()
_15("Lista interactuada con éxito")
end)
local _38=Instance.new("TextButton")_38.Size=UDim2.new(1,0,0,35)_38.Position=UDim2.new(0,0,0,10)_38.BackgroundColor3=Color3.fromRGB(0,120,215)_38.TextColor3=Color3.fromRGB(255,255,255)_38.TextSize=12
_38.Font=Enum.Font.SourceSansBold
_38.Text="Abrir ColorPicker"
_38.Parent=_22
Instance.new("UICorner",_38).CornerRadius=UDim.new(0,6)
local _39=Instance.new("Frame")_39.Size=UDim2.new(0,180,0,120)_39.Position=UDim2.new(0.5,-90,0.5,-60)_39.BackgroundColor3=Color3.fromRGB(20,20,25)_39.Visible=false
_39.Active=true
_39.Draggable=true
_39.Parent=_5
Instance.new("UICorner",_39).CornerRadius=UDim.new(0,6)
local _40=Instance.new("TextButton")_40.Size=UDim2.new(0,20,0,20)_40.Position=UDim2.new(1,-22,0,2)_40.BackgroundColor3=Color3.fromRGB(200,50,50)_40.TextColor3=Color3.fromRGB(255,255,255)_40.Text="X"
_40.TextSize=10
_40.Parent=_39
Instance.new("UICorner",_40).CornerRadius=UDim.new(0,3)
_40.MouseButton1Click:Connect(function()_39.Visible=false end)
local _41={Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0),Color3.fromRGB(0,0,255),Color3.fromRGB(255,255,0)}
for _42,_43 in ipairs(_41)do
local _44=Instance.new("TextButton")_44.Size=UDim2.new(0,35,0,35)_44.Position=UDim2.new(0,10+((_42-1)*40),0,40)_44.BackgroundColor3=_43
_44.Text=""
_44.Parent=_39
Instance.new("UICorner",_44).CornerRadius=UDim.new(0,4)
_44.MouseButton1Click:Connect(function()
_38.BackgroundColor3=_43
_15("Color aplicado con éxito")
_39.Visible=false
end)
end
_38.MouseButton1Click:Connect(function()
_39.Visible=not _39.Visible
end)
_15("¡Script cargado y listo en Delta!")
