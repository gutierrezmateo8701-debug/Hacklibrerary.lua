local _0x1a = {
    _0xb2 = game:GetService("CoreGui"),
    _0xc4 = game:GetService("TweenService"),
    _0xd6 = game:GetService("UserInputService")
}

local HubCrearWindow = {}
HubCrearWindow.__index = HubCrearWindow

function HubCrearWindow.Crear(_0x1, _0x2, _0x3, _0x4)
    local self = setmetatable({}, HubCrearWindow)
    self.Nombre = _0x1.Nombre or "M4teo"
    self.Subtitulo = _0x1.Subtitulo or "De mateo"
    self.KeySistem = _0x1.KeySistem or "No"
    self.Key = _0x1.Key or "M4teo"
    
    if self.KeySistem == "Si" then
        self:_0xKeySystem()
    else
        self:_0xConstruir()
    end
    return self
end

function HubCrearWindow:_0xKeySystem()
    local _0xKeyGui = Instance.new("ScreenGui")
    _0xKeyGui.Name = "\x4b\x65\x79\x53\x79\x73\x74\x65\x6d"
    _0xKeyGui.Parent = _0x1a._0xb2
    
    local _0xMain = Instance.new("Frame", _0xKeyGui)
    _0xMain.Size = UDim2.new(0, 300, 0, 160)
    _0xMain.Position = UDim2.new(0.5, -150, 0.5, -80)
    _0xMain.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    _0xMain.BorderSizePixel = 0
    
    local _0xBox = Instance.new("TextBox", _0xMain)
    _0xBox.Size = UDim2.new(0, 260, 0, 40)
    _0xBox.Position = UDim2.new(0, 20, 0, 40)
    _0xBox.PlaceholderText = "Ingresa la Key..."
    _0xBox.Text = ""
    _0xBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    _0xBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0xBox.BorderSizePixel = 0
    
    local _0xBtn = Instance.new("TextButton", _0xMain)
    _0xBtn.Size = UDim2.new(0, 260, 0, 40)
    _0xBtn.Position = UDim2.new(0, 20, 0, 95)
    _0xBtn.Text = "Comprobar Key"
    _0xBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    _0xBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0xBtn.BorderSizePixel = 0
    
    _0xBtn.MouseButton1Click:Connect(function()
        if _0xBox.Text == self.Key then
            _0xKeyGui:Destroy()
            self:_0xConstruir()
        else
            _0xBox.Text = "Key Incorrecta"
        end
    end)
end

function HubCrearWindow:_0xConstruir()
    local _0xGui = Instance.new("ScreenGui")
    _0xGui.Name = "\x4d\x34\x74\x65\x6f\x48\x75\x62"
    _0xGui.Parent = _0x1a._0xb2

    local _0xMain = Instance.new("Frame", _0xGui)
    _0xMain.Size = UDim2.new(0, 450, 0, 300)
    _0xMain.Position = UDim2.new(0.5, -225, 0.5, -150)
    _0xMain.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    _0xMain.BorderSizePixel = 0

    local _0xTop = Instance.new("Frame", _0xMain)
    _0xTop.Size = UDim2.new(1, 0, 0, 35)
    _0xTop.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    _0xTop.BorderSizePixel = 0

    local _0xTitle = Instance.new("TextLabel", _0xTop)
    _0xTitle.Size = UDim2.new(1, -100, 1, 0)
    _0xTitle.Position = UDim2.new(0, 10, 0, 0)
    _0xTitle.Text = self.Nombre .. " | " .. self.Subtitulo
    _0xTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0xTitle.TextXAlignment = Enum.TextXAlignment.Left
    _0xTitle.BackgroundTransparency = 1

    local _0xMin = Instance.new("TextButton", _0xTop)
    _0xMin.Size = UDim2.new(0, 35, 0, 35)
    _0xMin.Position = UDim2.new(1, -70, 0, 0)
    _0xMin.Text = "-"
    _0xMin.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0xMin.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    _0xMin.BorderSizePixel = 0

    local _0xClose = Instance.new("TextButton", _0xTop)
    _0xClose.Size = UDim2.new(0, 35, 0, 35)
    _0xClose.Position = UDim2.new(1, -35, 0, 0)
    _0xClose.Text = "X"
    _0xClose.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0xClose.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
    _0xClose.BorderSizePixel = 0

    local _0xContainerTab = Instance.new("ScrollingFrame", _0xMain)
    _0xContainerTab.Size = UDim2.new(0, 120, 1, -35)
    _0xContainerTab.Position = UDim2.new(0, 0, 0, 35)
    _0xContainerTab.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    _0xContainerTab.BorderSizePixel = 0

    local _0xPages = Instance.new("Folder", _0xMain)
    _0xPages.Name = "\x50\x61\x67\x65\x73"

    local _0xMinimizado = false
    _0xMin.MouseButton1Click:Connect(function()
        _0xMinimizado = not _0xMinimizado
        for _, v in ipairs(_0xMain:GetChildren()) do
            if v ~= _0xTop then
                v.Visible = not _0xMinimizado
            end
        end
        _0xMain.Size = _0xMinimizado and UDim2.new(0, 450, 0, 35) or UDim2.new(0, 450, 0, 300)
    end)

    _0xClose.MouseButton1Click:Connect(function()
        _0xGui:Destroy()
    end)

    function self:CrearPestaña(_0x5)
        local _0xBtnTab = Instance.new("TextButton", _0xContainerTab)
        _0xBtnTab.Size = UDim2.new(1, 0, 0, 30)
        _0xBtnTab.Text = _0x5
        _0xBtnTab.TextColor3 = Color3.fromRGB(200, 200, 200)
        _0xBtnTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        _0xBtnTab.BorderSizePixel = 0

        local _0xPage = Instance.new("ScrollingFrame", _0xMain)
        _0xPage.Size = UDim2.new(1, -120, 1, -35)
        _0xPage.Position = UDim2.new(0, 120, 0, 35)
        _0xPage.Visible = false
        _0xPage.BackgroundTransparency = 1
        _0xPage.BorderSizePixel = 0
        
        local _0xListLayout = Instance.new("UIListLayout", _0xPage)
        _0xListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        _0xListLayout.Padding = UDim.new(0, 5)

        _0xBtnTab.MouseButton1Click:Connect(function()
            for _, p in ipairs(_0xPages:GetChildren()) do
                p.Visible = false
            end
            _0xPage.Visible = true
        end)
        _0xPage.Parent = _0xPages

        local _0xElementoAPI = {}

        function _0xElementoAPI:Toggle(_0x6, _0x7)
            local _0xTgl = Instance.new("TextButton", _0xPage)
            _0xTgl.Size = UDim2.new(1, 0, 0, 30)
            _0xTgl.Text = "  " .. _0x6 .. ": " .. tostring(_0x7)
            _0xTgl.TextColor3 = Color3.fromRGB(255, 255, 255)
            _0xTgl.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            _0xTgl.TextXAlignment = Enum.TextXAlignment.Left
            _0xTgl.BorderSizePixel = 0
            
            local _0xState = _0x7
            _0xTgl.MouseButton1Click:Connect(function()
                _0xState = not _0xState
                _0xTgl.Text = "  " .. _0x6 .. ": " .. tostring(_0xState)
                pcall(_0x7, _0xState)
            end)
        end

        function _0xElementoAPI:Slider(_0x8, _0x9, _0x10, _0x11, _0x12)
            local _0xSld = Instance.new("Frame", _0xPage)
            _0xSld.Size = UDim2.new(1, 0, 0, 45)
            _0xSld.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            _0xSld.BorderSizePixel = 0

            local _0xTxt = Instance.new("TextLabel", _0xSld)
            _0xTxt.Size = UDim2.new(1, 0, 0, 20)
            _0xTxt.Text = "  " .. _0x8 .. ": " .. tostring(_0x11)
            _0xTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
            _0xTxt.TextXAlignment = Enum.TextXAlignment.Left
            _0xTxt.BackgroundTransparency = 1

            local _0xBar = Instance.new("TextButton", _0xSld)
            _0xBar.Size = UDim2.new(1, -20, 0, 10)
            _0xBar.Position = UDim2.new(0, 10, 0, 25)
            _0xBar.Text = ""
            _0xBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            _0xBar.BorderSizePixel = 0

            local _0xFill = Instance.new("Frame", _0xBar)
            _0xFill.Size = UDim2.new((_0x11 - _0x9) / (_0x10 - _0x9), 0, 1, 0)
            _0xFill.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
            _0xFill.BorderSizePixel = 0

            local _0xDragging = false
            _0xBar.MouseButton1Down:Connect(function() _0xDragging = true end)
            _0x1a._0xd6.InputEnded:Connect(function(_0xInput)
                if _0xInput.UserInputType == Enum.UserInputType.MouseButton1 then _0xDragging = false end
            end)

            game:GetService("RunService").RenderStepped:Connect(function()
                if _0xDragging then
                    local _0xMousePos = _0x1a._0xd6:GetMouseLocation().X
                    local _0xAbsPos = _0xBar.AbsolutePosition.X
                    local _0xAbsSize = _0xBar.AbsoluteSize.X
                    local _0xPerc = math.clamp((_0xMousePos - _0xAbsPos) / _0xAbsSize, 0, 1)
                    local _0xVal = math.floor(_0x9 + ((_0x10 - _0x9) * _0xPerc))
                    _0xFill.Size = UDim2.new(_0xPerc, 0, 1, 0)
                    _0xTxt.Text = "  " .. _0x8 .. ": " .. tostring(_0xVal)
                    pcall(_0x12, _0xVal)
                end
            end)
        end

        function _0xElementoAPI:Textbox(_0x13, _0x14)
            local _0xBoxEle = Instance.new("TextBox", _0xPage)
            _0xBoxEle.Size = UDim2.new(1, 0, 0, 30)
            _0xBoxEle.PlaceholderText = _0x13
            _0xBoxEle.Text = ""
            _0xBoxEle.TextColor3 = Color3.fromRGB(255, 255, 255)
            _0xBoxEle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            _0xBoxEle.BorderSizePixel = 0

            _0xBoxEle.FocusLost:Connect(function(_0xEnter)
                if _0xEnter then
                    pcall(_0x14, _0xBoxEle.Text)
                end
            end)
        end

        function _0xElementoAPI:Lista(_0x15, _0x16)
            local _0xLstBtn = Instance.new("TextButton", _0xPage)
            _0xLstBtn.Size = UDim2.new(1, 0, 0, 30)
            _0xLstBtn.Text = "  [Lista] " .. _0x15
            _0xLstBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            _0xLstBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            _0xLstBtn.TextXAlignment = Enum.TextXAlignment.Left
            _0xLstBtn.BorderSizePixel = 0

            local _0xOpened = false
            local _0xHolder = Instance.new("Frame", _0xPage)
            _0xHolder.Size = UDim2.new(1, 0, 0, 0)
            _0xHolder.BackgroundTransparency = 1
            _0xHolder.Visible = false

            local _0xListLayout2 = Instance.new("UIListLayout", _0xHolder)
            _0xListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

            for _, _0xItem in ipairs(_0x16) do
                local _0xSubBtn = Instance.new("TextButton", _0xHolder)
                _0xSubBtn.Size = UDim2.new(1, 0, 0, 25)
                _0xSubBtn.Text = "    - " .. _0xItem
                _0xSubBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
                _0xSubBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                _0xSubBtn.TextXAlignment = Enum.TextXAlignment.Left
                _0xSubBtn.BorderSizePixel = 0
            end

            _0xLstBtn.MouseButton1Click:Connect(function()
                _0xOpened = not _0xOpened
                _0xHolder.Visible = _0xOpened
            end)
        end

        return _0xElementoAPI
    end

    return self
end
