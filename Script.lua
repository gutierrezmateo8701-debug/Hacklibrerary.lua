local _1=game:GetService("CoreGui")local _2=game:GetService("Players")local _3=_2.LocalPlayerlocal _4=game:GetService("UserInputService")local _5={}function _5:CreateWindow(_6)if _1:FindFirstChild("DeltaCompleteGUI")then _1.DeltaCompleteGUI:Destroy()end
if _1:FindFirstChild("DeltaNotifs")then _1.DeltaNotifs:Destroy()end
local _7=Instance.new("ScreenGui")_7.Name="DeltaCompleteGUI"_7.Parent=_1
_7.ResetOnSpawn=false
local _8=Instance.new("Frame")_8.Size=UDim2.new(0,380,0,280)_8.Position=UDim2.new(0.5,-190,0.5,-140)_8.BackgroundColor3=Color3.fromRGB(24,24,28)_8.Active=true
_8.Draggable=true
_8.Parent=_7
Instance.new("UICorner",_8).CornerRadius=UDim.new(0,8)
local _9=Instance.new("UIStroke")_9.Thickness=2
_9.Color=Color3.fromRGB(255,0,0)
_9.Parent=_8
task.spawn(function()local _10=0
while _7.Parent do _10=(_10+1)%360;_9.Color=Color3.fromHSV(_10/360,1,1);task.wait(0.05)end
end)
local _11=Instance.new("Frame")_11.Size=UDim2.new(1,0,0,30)_11.BackgroundColor3=Color3.fromRGB(32,32,38)_11.Parent=_8
Instance.new("UICorner",_11).CornerRadius=UDim.new(0,8)
local _12=Instance.new("TextLabel")_12.Size=UDim2.new(0,220,1,0)_12.Position=UDim2.new(0,10,0,0)_12.BackgroundTransparency=1
_12.TextColor3=Color3.fromRGB(255,255,255)_12.TextSize=13
_12.Font=Enum.Font.SourceSansBold
_12.TextXAlignment=Enum.TextXAlignment.Left
_12.Text=_6 or "Delta Hub"
_12.Parent=_11
task.spawn(function()local _13=0
while _7.Parent do _13=(_13+1)%360;_12.TextColor3=Color3.fromHSV(_13/360,1,1);task.wait(0.05)end
end)
local _14=Instance.new("TextButton")_14.Size=UDim2.new(0,25,0,25)_14.Position=UDim2.new(1,-28,0.5,-12)_14.BackgroundColor3=Color3.fromRGB(220,60,60)_14.TextColor3=Color3.fromRGB(255,255,255)_14.TextSize=12
_14.Font=Enum.Font.SourceSansBold
_14.Text="X"
_14.Parent=_11
Instance.new("UICorner",_14).CornerRadius=UDim.new(0,4)
local _15=Instance.new("TextButton")_15.Size=UDim2.new(0,25,0,25)_15.Position=UDim2.new(1,-58,0.5,-12)_15.BackgroundColor3=Color3.fromRGB(60,60,70)_15.TextColor3=Color3.fromRGB(255,255,255)_15.TextSize=12
_15.Font=Enum.Font.SourceSansBold
_15.Text="-"
_15.Parent=_11
Instance.new("UICorner",_15).CornerRadius=UDim.new(0,4)
local _16=Instance.new("Frame")_16.Size=UDim2.new(1,0,1,-30)_16.Position=UDim2.new(0,0,0,30)_16.BackgroundTransparency=1
_16.Parent=_8
local _17=false
_15.MouseButton1Click:Connect(function()_17=not _17;_16.Visible=not _17;_8.Size=_17 and UDim2.new(0,380,0,30)or UDim2.new(0,380,0,280);_15.Text=_17 and "+" or "-"end)
_14.MouseButton1Click:Connect(function()_7:Destroy();if _1:FindFirstChild("DeltaNotifs")then _1.DeltaNotifs:Destroy()end end)
local _18=Instance.new("ScreenGui")_18.Name="DeltaNotifs"
_18.Parent=_1
local function _19(_20)local _21=Instance.new("TextButton")_21.Size=UDim2.new(0,240,0,45)_21.Position=UDim2.new(1,-250,1,-60)_21.BackgroundColor3=Color3.fromRGB(35,35,42)_21.TextColor3=Color3.fromRGB(255,255,255)_21.TextSize=12
_21.Font=Enum.Font.SourceSansBold
_21.Text="🔔 ".._21.."\n(Cerrar)"
_21.Parent=_18
Instance.new("UICorner",_21).CornerRadius=UDim.new(0,6)
_21.MouseButton1Click:Connect(function()_21:Destroy()end)
task.delay(3,function()if _21 and _21.Parent then _21:Destroy()end end)end
local _22=Instance.new("Frame")_22.Size=UDim2.new(1,-16,0,28)_22.Position=UDim2.new(0,8,0,6)_22.BackgroundTransparency=1
_22.Parent=_16
local _23=Instance.new("UIListLayout")_23.FillDirection=Enum.FillDirection.Horizontal
_23.SortOrder=Enum.SortOrder.LayoutOrder
_23.Padding=UDim.new(0,6)
_23.Parent=_22
local _24=Instance.new("Frame")_24.Size=UDim2.new(1,-16,1,-42)_24.Position=UDim2.new(0,8,0,38)_24.BackgroundTransparency=1
_24.Parent=_16
local _25={}local _26=nil
function _5:CreateTab(_27)local _28=Instance.new("ScrollingFrame")_28.Size=UDim2.new(1,0,1,0)_28.BackgroundTransparency=1
_28.CanvasSize=UDim2.new(0,0,0,0)
_28.ScrollBarThickness=4
_28.Visible=false
_28.Parent=_24
local _29=Instance.new("UIListLayout")_29.Parent=_28
_29.Padding=UDim.new(0,6)
_29:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()_28.CanvasSize=UDim2.new(0,0,0,_29.AbsoluteContentSize.Y+10)end)
local _30=Instance.new("TextButton")_30.Size=UDim2.new(0,105,1,0)_30.BackgroundColor3=Color3.fromRGB(35,35,42)_30.TextColor3=Color3.fromRGB(180,180,180)_30.TextSize=12
_30.Font=Enum.Font.SourceSansBold
_30.Text=_27
_30.Parent=_22
Instance.new("UICorner",_30).CornerRadius=UDim.new(0,6)
table.insert(_25,{Tab=_28,Btn=_30})
if not _26 then _26=_28;_30.BackgroundColor3=Color3.fromRGB(50,50,65);_30.TextColor3=Color3.fromRGB(255,255,255);_28.Visible=true end
_30.MouseButton1Click:Connect(function()for _,_31 in ipairs(_25)do _31.Tab.Visible=false;_31.Btn.BackgroundColor3=Color3.fromRGB(35,35,42);_31.Btn.TextColor3=Color3.fromRGB(180,180,180)end;_28.Visible=true;_30.BackgroundColor3=Color3.fromRGB(50,50,65);_30.TextColor3=Color3.fromRGB(255,255,255)end)
local _32={}function _32:AddButton(_33,_34)local _35=Instance.new("TextButton")_35.Size=UDim2.new(1,0,0,32)_35.BackgroundColor3=Color3.fromRGB(30,30,38)_35.TextColor3=Color3.fromRGB(255,255,255)_35.TextSize=12
_35.Font=Enum.Font.SourceSansBold
_35.Text=_33
_35.Parent=_28
Instance.new("UICorner",_35).CornerRadius=UDim.new(0,6)
_35.MouseButton1Click:Connect(function()pcall(_34)end)end
function _32:AddToggle(_36,_37)local _38=Instance.new("TextButton")_38.Size=UDim2.new(1,0,0,32)_38.BackgroundColor3=Color3.fromRGB(30,30,38)_38.Text=""
_38.Parent=_28
Instance.new("UICorner",_38).CornerRadius=UDim.new(0,6)
local _39=Instance.new("TextLabel")_39.Size=UDim2.new(0.7,0,1,0)_39.Position=UDim2.new(0,10,0,0)_39.BackgroundTransparency=1
_39.TextColor3=Color3.fromRGB(255,255,255)_39.TextSize=12
_39.Font=Enum.Font.SourceSansBold
_39.TextXAlignment=Enum.TextXAlignment.Left
_39.Text=_36
_39.Parent=_38
local _40=Instance.new("Frame")_40.Size=UDim2.new(0,18,0,18)_40.Position=UDim2.new(1,-26,0.5,-9)_40.BackgroundColor3=Color3.fromRGB(180,50,50)_40.Parent=_38
Instance.new("UICorner",_40).CornerRadius=UDim.new(1,0)
local _41=false
_38.MouseButton1Click:Connect(function()_41=not _41;_40.BackgroundColor3=_41 and Color3.fromRGB(50,200,50)or Color3.fromRGB(180,50,50);pcall(_37,_41)end)end
function _32:AddSlider(_42,_43,_44,_45)local _46=Instance.new("Frame")_46.Size=UDim2.new(1,0,0,45)_46.BackgroundColor3=Color3.fromRGB(30,30,38)_46.Parent=_28
Instance.new("UICorner",_46).CornerRadius=UDim.new(0,6)
local _47=Instance.new("TextLabel")_47.Size=UDim2.new(1,-10,0,20)_47.Position=UDim2.new(0,10,0,2)_47.BackgroundTransparency=1
_47.TextColor3=Color3.fromRGB(255,255,255)_47.TextSize=12
_47.Font=Enum.Font.SourceSansBold
_47.TextXAlignment=Enum.TextXAlignment.Left
_47.Text=_42..": ".._45
_47.Parent=_46
local _48=Instance.new("TextButton")_48.Size=UDim2.new(1,-20,0,8)_48.Position=UDim2.new(0,10,0,28)_48.BackgroundColor3=Color3.fromRGB(50,50,60)_48.Text=""
_48.Parent=_46
Instance.new("UICorner",_48).CornerRadius=UDim.new(1,0)
local _49=Instance.new("Frame")_49.Size=UDim2.new((_45-_43)/(_44-_43),0,1,0)_49.BackgroundColor3=Color3.fromRGB(0,120,215)_49.Parent=_48
Instance.new("UICorner",_49).CornerRadius=UDim.new(1,0)
local _50=false
_48.MouseButton1Down:Connect(function()_50=true end)
_4.InputEnded:Connect(function(_51)if _51.UserInputType==Enum.UserInputType.MouseButton1 or _51.UserInputType==Enum.UserInputType.Touch then _50=false end end)
_4.InputChanged:Connect(function(_51)if _50 and (_51.UserInputType==Enum.UserInputType.MouseMovement or _51.UserInputType==Enum.UserInputType.Touch)then local _52=math.clamp((_51.Position.X-_48.AbsolutePosition.X)/_48.AbsoluteSize.X,0,1)
_49.Size=UDim2.new(_52,0,1,0)local _53=math.floor(_43+(_44-_43)*_52)
_47.Text=_42..": ".._53
pcall(_45,_53)end end)end
function _32:AddTextbox(_54,_55)local _56=Instance.new("TextBox")_56.Size=UDim2.new(1,0,0,32)_56.BackgroundColor3=Color3.fromRGB(30,30,38)_56.TextColor3=Color3.fromRGB(255,255,255)_56.PlaceholderColor3=Color3.fromRGB(150,150,150)_56.PlaceholderText=_54
_56.TextSize=12
_56.Font=Enum.Font.SourceSans
_56.Text=""
_56.Parent=_28
Instance.new("UICorner",_56).CornerRadius=UDim.new(0,6)
_56.FocusLost:Connect(function(_57)if _57 then pcall(_55,_56.Text)end end)end
function _32:AddDropdown(_58,_59,_60)local _61=false
local _62=Instance.new("TextButton")_62.Size=UDim2.new(1,0,0,32)_62.BackgroundColor3=Color3.fromRGB(30,30,38)_62.TextColor3=Color3.fromRGB(255,255,255)_62.TextSize=12
_62.Font=Enum.Font.SourceSansBold
_62.Text=_58..": "..(_59[1]or "")
_62.Parent=_28
Instance.new("UICorner",_62).CornerRadius=UDim.new(0,6)
_62.MouseButton1Click:Connect(function()_61=not _61;_62.Size=_61 and UDim2.new(1,0,0,32+(#_59*28))or UDim2.new(1,0,0,32)end)
for _63,_64 in ipairs(_59)do local _65=Instance.new("TextButton")_65.Size=UDim2.new(1,0,0,26)_65.Position=UDim2.new(0,0,0,32+((_63-1)*28))_65.BackgroundColor3=Color3.fromRGB(40,40,48)_65.TextColor3=Color3.fromRGB(200,200,200)_65.TextSize=11
_65.Font=Enum.Font.SourceSans
_65.Text=_64
_65.Parent=_62
_65.MouseButton1Click:Connect(function()_62.Text=_58..": ".._64;_61=false;_62.Size=UDim2.new(1,0,0,32)pcall(_60,_64)end)end end
return _32 end
return _5
