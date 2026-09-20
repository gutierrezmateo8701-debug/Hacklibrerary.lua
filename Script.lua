local _0x3f2a=game:GetService("CoreGui")local _0x8b1c={}_0x8b1c.__index=_0x8b1c
function _0x8b1c.Crear(_0x9d4e)
local _0x1a2b=setmetatable({},_0x8b1c)
_0x1a2b.Nombre=_0x9d4e.Nombre or"\x4d\x34\x74\x65\x6f"
_0x1a2b.Subtitulo=_0x9d4e.Subtitulo or"\x44\x65\x20\x6d\x61\x74\x65\x6f"
_0x1a2b.KeySistem=_0x9d4e.KeySistem or"\x4e\x6f"
_0x1a2b.Key=_0x9d4e.Key or"\x4d\x34\x74\x65\x6f"
if _0x1a2b.KeySistem=="\x53\x69" then
_0x1a2b:_0x7c4f()
else
_0x1a2b:_0x9e2d()
end
return _0x1a2b
end
function _0x8b1c:_0x7c4f()
local _0x4d3e=Instance.new("\x53\x63\x72\x65\x65\x6e\x47\x75\x69")
_0x4d3e.Name="\x4d\x34\x74\x65\x6f\x4b\x65\x79\x53\x79\x73\x74\x65\x6d"
_0x4d3e.Parent=_0x3f2a
local _0x5e2f=Instance.new("\x46\x72\x61\x6d\x65",_0x4d3e)
_0x5e2f.Size=UDim2.new(0,300,0,160)
_0x5e2f.Position=UDim2.new(0.5,-150,0.5,-80)
_0x5e2f.BackgroundColor3=Color3.fromRGB(20,20,20)
_0x5e2f.BorderSizePixel=0
local _0x6f3a=Instance.new("\x54\x65\x78\x74\x42\x6f\x78",_0x5e2f)
_0x6f3a.Size=UDim2.new(0,260,0,40)
_0x6f3a.Position=UDim2.new(0,20,0,40)
_0x6f3a.PlaceholderText="\x49\x6e\x67\x72\x65\x73\x61\x20\x6c\x61\x20\x4b\x65\x79\x2e\x2e\x2e"
_0x6f3a.Text=""
_0x6f3a.BackgroundColor3=Color3.fromRGB(35,35,35)
_0x6f3a.TextColor3=Color3.fromRGB(255,255,255)
_0x6f3a.BorderSizePixel=0
local _0x7a4b=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x5e2f)
_0x7a4b.Size=UDim2.new(0,260,0,40)
_0x7a4b.Position=UDim2.new(0,20,0,95)
_0x7a4b.Text="\x43\x6f\x6d\x70\x72\x6f\x62\x61\x72\x20\x4b\x65\x79"
_0x7a4b.BackgroundColor3=Color3.fromRGB(50,150,50)
_0x7a4b.TextColor3=Color3.fromRGB(255,255,255)
_0x7a4b.BorderSizePixel=0
_0x7a4b.MouseButton1Click:Connect(function()
if _0x6f3a.Text==self.Key then
_0x4d3e:Destroy()
self:_0x9e2d()
else
_0x6f3a.Text="\x4b\x65\x79\x20\x49\x6e\x63\x6f\x72\x72\x65\x63\x74\x61"
end
end)
end
function _0x8b1c:_0x9e2d()
local _0x8b2c=Instance.new("\x53\x63\x72\x65\x65\x6e\x47\x75\x69")
_0x8b2c.Name="\x4d\x34\x74\x65\x6f\x48\x75\x62"
_0x8b2c.Parent=_0x3f2a
local _0x9c3d=Instance.new("\x46\x72\x61\x6d\x65",_0x8b2c)
_0x9c3d.Size=UDim2.new(0,450,0,300)
_0x9c3d.Position=UDim2.new(0.5,-225,0.5,-150)
_0x9c3d.BackgroundColor3=Color3.fromRGB(25,25,25)
_0x9c3d.BorderSizePixel=0
local _0x1d4e=Instance.new("\x46\x72\x61\x6d\x65",_0x9c3d)
_0x1d4e.Size=UDim2.new(1,0,0,35)
_0x1d4e.BackgroundColor3=Color3.fromRGB(35,35,35)
_0x1d4e.BorderSizePixel=0
local _0x2e5f=Instance.new("\x54\x65\x78\x74\x4c\x61\x62\x65\x6c",_0x1d4e)
_0x2e5f.Size=UDim2.new(1,-100,1,0)
_0x2e5f.Position=UDim2.new(0,10,0,0)
_0x2e5f.Text=self.Nombre.."\x20\x7c\x20"..self.Subtitulo
_0x2e5f.TextColor3=Color3.fromRGB(255,255,255)
_0x2e5f.TextXAlignment=Enum.TextXAlignment.Left
_0x2e5f.BackgroundTransparency=1
local _0x3f6a=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x1d4e)
_0x3f6a.Size=UDim2.new(0,35,0,35)
_0x3f6a.Position=UDim2.new(1,-70,0,0)
_0x3f6a.Text="\x2d"
_0x3f6a.TextColor3=Color3.fromRGB(255,255,255)
_0x3f6a.BackgroundColor3=Color3.fromRGB(45,45,45)
_0x3f6a.BorderSizePixel=0
local _0x4a7b=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x1d4e)
_0x4a7b.Size=UDim2.new(0,35,0,35)
_0x4a7b.Position=UDim2.new(1,-35,0,0)
_0x4a7b.Text="\x58"
_0x4a7b.TextColor3=Color3.fromRGB(255,255,255)
_0x4a7b.BackgroundColor3=Color3.fromRGB(180,50,50)
_0x4a7b.BorderSizePixel=0
local _0x5b8c=Instance.new("\x53\x63\x72\x6f\x6c\x6c\x69\x6e\x67\x46\x72\x61\x6d\x65",_0x9c3d)
_0x5b8c.Size=UDim2.new(0,120,1,-35)
_0x5b8c.Position=UDim2.new(0,0,0,35)
_0x5b8c.BackgroundColor3=Color3.fromRGB(20,20,20)
_0x5b8c.BorderSizePixel=0
_0x5b8c.CanvasSize=UDim2.new(0,0,0,0)
local _0x6c9d=Instance.new("\x46\x6f\x6c\x64\x65\x72",_0x9c3d)
_0x6c9d.Name="\x50\x61\x67\x65\x73"
local _0x7d0e=false
_0x3f6a.MouseButton1Click:Connect(function()
_0x7d0e=not _0x7d0e
for _,_0x8e1f in ipairs(_0x9c3d:GetChildren()) do
if _0x8e1f~=_0x1d4e then
_0x8e1f.Visible=not _0x7d0e
end
end
_0x9c3d.Size=_0x7d0e and UDim2.new(0,450,0,35)or UDim2.new(0,450,0,300)
end)
_0x4a7b.MouseButton1Click:Connect(function()
_0x8b2c:Destroy()
end)
self._0x5b8c=_0x5b8c
self._0x6c9d=_0x6c9d
self._0x9c3d=_0x9c3d
end
function _0x8b1c:CrearPestaña(_0x1a)
local _0x2b=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",self._0x5b8c)
_0x2b.Size=UDim2.new(1,0,0,30)
_0x2b.Text=_0x1a
_0x2b.TextColor3=Color3.fromRGB(200,200,200)
_0x2b.BackgroundColor3=Color3.fromRGB(30,30,30)
_0x2b.BorderSizePixel=0
local _0x3c=Instance.new("\x53\x63\x72\x6f\x6c\x6c\x69\x6e\x67\x46\x72\x61\x6d\x65",self._0x9c3d)
_0x3c.Size=UDim2.new(1,-120,1,-35)
_0x3c.Position=UDim2.new(0,120,0,35)
_0x3c.Visible=false
_0x3c.BackgroundTransparency=1
_0x3c.BorderSizePixel=0
_0x3c.CanvasSize=UDim2.new(0,0,2,0)
local _0x4d=Instance.new("\x55\x49\x4c\x69\x73\x74\x4c\x61\x79\x6f\x75\x74",_0x3c)
_0x4d.SortOrder=Enum.SortOrder.LayoutOrder
_0x4d.Padding=UDim.new(0,5)
_0x2b.MouseButton1Click:Connect(function()
for _,_0x5e in ipairs(self._0x6c9d:GetChildren()) do
_0x5e.Visible=false
end
_0x3c.Visible=true
end)
_0x3c.Parent=self._0x6c9d
local _0x6f={}
function _0x6f:Toggle(_0x7a,_0x8b)
local _0x9c=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x3c)
_0x9c.Size=UDim2.new(1,0,0,30)
_0x9c.Text="\x20\x20".._0x7a.."\x3a\x20"..tostring(false)
_0x9c.TextColor3=Color3.fromRGB(255,255,255)
_0x9c.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x9c.TextXAlignment=Enum.TextXAlignment.Left
_0x9c.BorderSizePixel=0
local _0xad=false
_0x9c.MouseButton1Click:Connect(function()
_0xad=not _0xad
_0x9c.Text="\x20\x20".._0x7a.."\x3a\x20"..tostring(_0xad)
pcall(_0x8b,_0xad)
end)
end
function _0x6f:Slider(_0xbe,_0xcf,_0xd0,_0xe1,_0xf2)
local _0x03=Instance.new("\x46\x72\x61\x6d\x65",_0x3c)
_0x03.Size=UDim2.new(1,0,0,45)
_0x03.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x03.BorderSizePixel=0
local _0x14=Instance.new("\x54\x65\x78\x74\x4c\x61\x62\x65\x6c",_0x03)
_0x14.Size=UDim2.new(1,0,0,20)
_0x14.Text="\x20\x20".._0xbe.."\x3a\x20"..tostring(_0xe1)
_0x14.TextColor3=Color3.fromRGB(255,255,255)
_0x14.TextXAlignment=Enum.TextXAlignment.Left
_0x14.BackgroundTransparency=1
local _0x25=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x03)
_0x25.Size=UDim2.new(1,-20,0,10)
_0x25.Position=UDim2.new(0,10,0,25)
_0x25.Text=""
_0x25.BackgroundColor3=Color3.fromRGB(60,60,60)
_0x25.BorderSizePixel=0
local _0x36=Instance.new("\x46\x72\x61\x6d\x65",_0x25)
_0x36.Size=UDim2.new((_0xe1-_0xcf)/(_0xd0-_0xcf),0,1,0)
_0x36.BackgroundColor3=Color3.fromRGB(0,120,255)
_0x36.BorderSizePixel=0
local _0x47=false
local _0x58=game:GetService("\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x53\x65\x72\x76\x69\x63\x65")
_0x25.MouseButton1Down:Connect(function()_0x47=true end)
_0x58.InputEnded:Connect(function(_0x69)
if _0x69.UserInputType==Enum.UserInputType.MouseButton1 then _0x47=false end
end)
game:GetService("\x52\x75\x6e\x53\x65\x72\x76\x69\x63\x65").RenderStepped:Connect(function()
if _0x47 then
local _0x7a=_0x58:GetMouseLocation().X
local _0x8b=_0x25.AbsolutePosition.X
local _0x9c=_0x25.AbsoluteSize.X
local _0xad=math.clamp((_0x7a-_0x8b)/(_0x9c==0 and 1 or _0x9c),0,1)
local _0xbe=math.floor(_0xcf+((_0xd0-_0xcf)*_0xad))
_0x36.Size=UDim2.new(_0xad,0,1,0)
_0x14.Text="\x20\x20".._0xbe.."\x3a\x20"..tostring(_0xbe)
pcall(_0xf2,_0xbe)
end
end)
end
function _0x6f:Textbox(_0xcf,_0xd0)
local _0xe1=Instance.new("\x54\x65\x78\x74\x42\x6f\x78",_0x3c)
_0xe1.Size=UDim2.new(1,0,0,30)
_0e1.PlaceholderText=_0xcf
_0e1.Text=""
_0e1.TextColor3=Color3.fromRGB(255,255,255)
_0e1.BackgroundColor3=Color3.fromRGB(40,40,40)
_0e1.BorderSizePixel=0
_0e1.FocusLost:Connect(function(_0xf2)
if _0xf2 then
pcall(_0xd0,_0e1.Text)
end
end)
end
function _0x6f:Lista(_0xf2,_0x03)
local _0x14=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x3c)
_0x14.Size=UDim2.new(1,0,0,30)
_0x14.Text="\x20\x20\x5b\x4c\x69\x73\x74\x61\x5d\x20".._0xf2
_0x14.TextColor3=Color3.fromRGB(255,255,255)
_0x14.BackgroundColor3=Color3.fromRGB(40,40,40)
_0x14.TextXAlignment=Enum.TextXAlignment.Left
_0x14.BorderSizePixel=0
local _0x25=false
local _0x36=Instance.new("\x46\x72\x61\x6d\x65",_0x3c)
_0x36.Size=UDim2.new(1,0,0,#_0x03*25)
_0x36.BackgroundTransparency=1
_0x36.Visible=false
local _0x47=Instance.new("\x55\x49\x4c\x69\x73\x74\x4c\x61\x79\x6f\x75\x74",_0x36)
_0x47.SortOrder=Enum.SortOrder.LayoutOrder
for _,_0x58 in ipairs(_0x03) do
local _0x69=Instance.new("\x54\x65\x78\x74\x42\x75\x74\x74\x6f\x6e",_0x36)
_0x69.Size=UDim2.new(1,0,0,25)
_0x69.Text="\x20\x20\x20\x20\x2d\x20".._0x58
_0x69.TextColor3=Color3.fromRGB(200,200,200)
_0x69.BackgroundColor3=Color3.fromRGB(30,30,30)
_0x69.TextXAlignment=Enum.TextXAlignment.Left
_0x69.BorderSizePixel=0
end
_0x14.MouseButton1Click:Connect(function()
_0x25=not _0x25
_0x36.Visible=_0x25
end)
end
return _0x6f
end
return _0x8b1c
