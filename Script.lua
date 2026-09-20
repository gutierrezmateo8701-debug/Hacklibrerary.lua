local _0x9f1a={_0xb2=game:GetService("CoreGui"),_0xc4=game:GetService("TweenService"),_0xd6=game:GetService("UserInputService")}local _0x3e2b={}
_0x3e2b.__index=_0x3e2b
function _0x3e2b.Crear(_0x1a,_0x2b,_0x3c,_0x4d)
local _0x5e=setmetatable({},_0x3e2b)
_0x5e.Nombre=_0x1a.Nombre or "\x4d\x34\x74\x65\x6f"
_0x5e.Subtitulo=_0x1a.Subtitulo or "\x44\x65\x20\x6d\x61\x74\x65\x6f"
_0x5e.KeySistem=_0x1a.KeySistem or "\x4e\x6f"
_0x5e.Key=_0x1a.Key or "\x4d\x34\x74\x65\x6f"
if _0x5e.KeySistem=="\x53\x69" then
_0x5e:_0x7fKeySys()
else
_0x5e:_0x8aBuild()
end
return _0x5e
end
function _0x3e2b:_0x7fKeySys()
local _0x9c=Instance.new("\x53\x63\x72\x65\x65\x6e\x47\x75\x69")
_0x9c.Name="\x4b\x65\x79\x53\x79\x73\x74\x65\x6d"
_0x9c.Parent=_0x9f1a._0xb2
local _0x1d=Instance.new("\x46\x72\x61\x6d\x65",_0x9c)
_0x1d.Size=UDim2.new(0,300,0,160)
_0x1d.Position=UDim2.new(0.5,-150,0.5,-80)
_0x1d.BackgroundColor3=Color3.fromRGB(20,20,20)
_0x1d.BorderSizePixel=0
local _0x2e=Instance.new("\x54\x65\x78\x74\x42\x6f\x78",_0x1d)
_0x2e.Size=UDim2.new(0,260,0,40)
_0x2e.Position=UDim2.new(0,20,0,40)
_0x2e.PlaceholderText="\x49\x6e\x67\x72\x65\x73\x61\x20\x6c\x61\x20\x4b\x65\x79\x2e\x2e\x2e"
_0x2e.Text=""
_0x2e.BackgroundColor3=Color3.fromRGB(35,35,35)
_0x2e.TextColor3=Color3.fromRGB(255,255,255)
_0x2e.BorderSizePixel=0
local _0x3f=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x1d)
_0x3f.Size=UDim2.new(0,260,0,40)
_0x3f.Position=UDim2.new(0,20,0,95)
_0x3f.Text="\x43\x6f\x6d\x70\x72\x6f\x62\x61\x72\x20\x4b\x65\x79"
_0x3f.BackgroundColor3=Color3.fromRGB(50,150,50)
_0x3f.TextColor3=Color3.fromRGB(255,255,255)
_0x3f.BorderSizePixel=0
_0x3f.MouseButton1Click:Connect(function()
if _0x2e.Text==self.Key then
_0x9c:Destroy()
self:_0x8aBuild()
else
_0x2e.Text="\x4b\x65\x79\x20\x49\x6e\x63\x6f\x72\x72\x65\x63\x74\x61"
end
end)
end
function _0x3e2b:_0x8aBuild()
local _0x4a=Instance.new("\x53\x63\x72\x65\x65\x6e\x47\x75\x69")
_0x4a.Name="\x4d\x34\x74\x65\x6f\x48\x75\x62"
_0x4a.Parent=_0x9f1a._0xb2
local _0x5b=Instance.new("\x46\x72\x61\x6d\x65",_0x4a)
_0x5b.Size=UDim2.new(0,450,0,300)
_0x5b.Position=UDim2.new(0.5,-225,0.5,-150)
_0x5b.BackgroundColor3=Color3.fromRGB(25,25,25)
_0x5b.BorderSizePixel=0
local _0x6c=Instance.new("\x46\x72\x61\x6d\x65",_0x5b)
_0x6c.Size=UDim2.new(1,0,0,35)
_0x6c.BackgroundColor3=Color3.fromRGB(35,35,35)
_0x6c.BorderSizePixel=0
local _0x7d=Instance.new("\x54\x65\x78\x74\x4c\x61\x62\x65\x6c",_0x6c)
_0x7d.Size=UDim2.new(1,-100,1,0)
_0x7d.Position=UDim2.new(0,10,0,0)
_0x7d.Text=self._0xNombreField or (self.Nombre.."\x20\x7c\x20"..self.Subtitulo)
_0x7d.TextColor3=Color3.fromRGB(255,255,255)
_0x7d.TextXAlignment=Enum.TextXAlignment.Left
_0x7d.BackgroundTransparency=1
local _0x8e=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x6c)
_0x8e.Size=UDim2.new(0,35,0,35)
_0x8e.Position=UDim2.new(1,-70,0,0)
_0x8e.Text="\x2d"
_0x8e.TextColor3=Color3.fromRGB(255,255,255)
_0x8e.BackgroundColor3=Color3.fromRGB(45,45,45)
_0x8e.BorderSizePixel=0
local _0x9f=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x6c)
_0x9f.Size=UDim2.new(0,35,0,35)
_0x9f.Position=UDim2.new(1,-35,0,0)
_0x9f.Text="\x58"
_0x9f.TextColor3=Color3.fromRGB(255,255,255)
_0x9f.BackgroundColor3=Color3.fromRGB(180,50,50)
_0x9f.BorderSizePixel=0
local _0x0a=Instance.new("\x53\x63\x72\x6f\x6c\x6c\x69\x6e\x67\x46\x72\x61\x6d\x65",_0x5b)
_0x0a.Size=UDim2.new(0,120,1,-35)
_0x0a.Position=UDim2.new(0,0,0,35)
_0x0a.BackgroundColor3=Color3.fromRGB(20,20,20)
_0x0a.BorderSizePixel=0
local _0x1b=Instance.new("\x46\x6f\x6c\x64\x65\x72",_0x5b)
_0x1b.Name="\x50\x61\x67\x65\x73"
local _0x2c=false
_0x8e.MouseButton1Click:Connect(function()
_0x2c=not _0x2c
for _,_0x3d in ipairs(_0x5b:GetChildren()) do
if _0x3d~=_0x6c then
_0x3d.Visible=not _0x2c
end
end
_0x5b.Size=_0x2c and UDim2.new(0,450,0,35) or UDim2.new(0,450,0,300)
end)
_0x9f.MouseButton1Click:Connect(function()
_0x4a:Destroy()
end)
function self:CrearPestaña(_0x4e)
local _0x5f=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x0a)
_0x5f.Size=UDim2.new(1,0,0,30)
_0x5f.Text=_0x4e
_0x5f.TextColor3=Color3.fromRGB(200,200,200)
_0x5f.BackgroundColor3=Color3.fromRGB(30,30,30)
_0x5f.BorderSizePixel=0
local _0x60=Instance.new("\x53\x63\x72\x6f\x6c\x6c\x69\x6e\x67\x46\x72\x61\x6d\x65",_0x5b)
_0x60.Size=UDim2.new(1,-120,1,-35)
_0x60.Position=UDim2.new(0,120,0,35)
_0x60.Visible=false
_0x60.BackgroundTransparency=1
_0x60.BorderSizePixel=0
local _0x71=Instance.new("\x55\x49\x4c\x69\x73\x74\x4c\x61\x79\x6f\x75\x74",_0x60)
_0x71.SortOrder=Enum.SortOrder.LayoutOrder
_0x71.Padding=UDim.new(0,5)
_0x5f.MouseButton1Click:Connect(function()
for _,_0x82 in ipairs(_0x1b:GetChildren()) do
_0x82.Visible=false
end
_0x60.Visible=true
end)
_0x60.Parent=_0x1b
local _0x93={}
function _0x93:Toggle(_0xaa,_0xbb)
local _0xcc=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x60)
_0xcc.Size=UDim2.new(1,0,0,30)
_0xcc.Text="\x20\x20".._0xaa.."\x3a\x20"..tostring(_0xbb)
_0xcc.TextColor3=Color3.fromRGB(255,255,255)
_0xcc.BackgroundColor3=Color3.fromRGB(40,40,40)
_0xcc.TextXAlignment=Enum.TextXAlignment.Left
_0xcc.BorderSizePixel=0
local _0xdd=_0xbb
_0xcc.MouseButton1Click:Connect(function()
_0xdd=not _0xdd
_0xcc.Text="\x20\x20".._0xaa.."\x3a\x20"..tostring(_0xdd)
pcall(_0xbb,_0xdd)
end)
end
function _0x93:Slider(_0xee,_0xff,_0x01,_0x12,_0x23)
local _0x34=Instance.new("\x46\x72\x61\x6d\x65",_0x60)
_0x34.Size=UDim2.new(1,0,0,45)
_0x34.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x34.BorderSizePixel=0
local _0x45=Instance.new("\x54\x65\x78\x74\x4c\x61\x62\x65\x6c",_0x34)
_0x45.Size=UDim2.new(1,0,0,20)
_0x45.Text="\x20\x20".._0xee.."\x3a\x20"..tostring(_0x12)
_0x45.TextColor3=Color3.fromRGB(255,255,255)
_0x45.TextXAlignment=Enum.TextXAlignment.Left
_0x45.BackgroundTransparency=1
local _0x56=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x34)
_0x56.Size=UDim2.new(1,-20,0,10)
_0x56.Position=UDim2.new(0,10,0,25)
_0x56.Text=""
_0x56.BackgroundColor3=Color3.fromRGB(60,60,60)
_0x56.BorderSizePixel=0
local _0x67=Instance.new("\x46\x72\x61\x6d\x65",_0x56)
_0x67.Size=UDim2.new((_0x12-_0xff)/(_0x01-_0xff),0,1,0)
_0x67.BackgroundColor3=Color3.fromRGB(0,120,255)
_0x67.BorderSizePixel=0
local _0x78=false
_0x56.MouseButton1Down:Connect(function() _0x78=true end)
_0x9f1a._0xd6.InputEnded:Connect(function(_0x89)
if _0x89.UserInputType==Enum.UserInputType.MouseButton1 then _0x78=false end
end)
game:GetService("\x52\x75\x6e\x53\x65\x72\x76\x69\x63\x65").RenderStepped:Connect(function()
if _0x78 then
local _0x9a=_0x9f1a._0xd6:GetMouseLocation().X
local _0xab=_0x56.AbsolutePosition.X
local _0xbc=_0x56.AbsoluteSize.X
local _0xcd=math.clamp((_0x9a-_0xab)/(_0xbc==0 and 1 or _0xbc),0,1)
local _0xde=math.floor(_0xff+((_0x01-_0xff)*_0xcd))
_0x67.Size=UDim2.new(_0xcd,0,1,0)
_0x45.Text="\x20\x20".._0xee.."\x3a\x20"..tostring(_0xde)
pcall(_0x23,_0xde)
end
end)
end
function _0x93:Textbox(_0xef,_0xf0)
local _0x01=Instance.new("\x54\x65\x78\x74\x42\x6f\x78",_0x60)
_0x01.Size=UDim2.new(1,0,0,30)
_0x01.PlaceholderText=_0xef
_0x01.Text=""
_0x01.TextColor3=Color3.fromRGB(255,255,255)
_0x01.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x01.BorderSizePixel=0
_0x01.FocusLost:Connect(function(_0x12)
if _0x12 then
pcall(_0xf0,_0x01.Text)
end
end)
end
function _0x93:Lista(_0x23,_0x34)
local _0x45=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x60)
_0x45.Size=UDim2.new(1,0,0,30)
_0x45.Text="\x20\x20\x5b\x4c\x69\x73\x74\x61\x5d\x20".._0x23
_0x45.TextColor3=Color3.fromRGB(255,255,255)
_0x45.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x45.TextXAlignment=Enum.TextXAlignment.Left
_0x45.BorderSizePixel=0
local _0x56=false
local _0x67=Instance.new("\x46\x72\x61\x6d\x65",_0x60)
_0x67.Size=UDim2.new(1,0,0,0)
_0x67.BackgroundTransparency=1
_0x67.Visible=false
local _0x78=Instance.new("\x55\x49\x4c\x69\x73\x74\x4c\x61\x79\x6f\x75\x74",_0x67)
_0x78.SortOrder=Enum.SortOrder.LayoutOrder
for _,_0x89 in ipairs(_0x34) do
local _0x9a=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x67)
_0x9a.Size=UDim2.new(1,0,0,25)
_0x9a.Text="\x20\x20\x20\x20\x2d\x20".._0x89
_0x9a.TextColor3=Color3.fromRGB(200,200,200)
_0x9a.BackgroundColor3=Color3.fromRGB(30,30,30)
_0x9a.TextXAlignment=Enum.TextXAlignment.Left
_0x9a.BorderSizePixel=0
end
_0x45.MouseButton1Click:Connect(function()
_0x56=not _0x56
_0x67.Visible=_0x56
end)
end
return _0x93
end
return self
end
return _0x3e2b
