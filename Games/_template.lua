-- ShizaHub game script template
-- Copy this file, rename it, and add it to Scripts/Games in loader.lua.

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer

local Script = {
    Name = "New Game Script",
    Version = "1.0.0",
}

local function notify(title, message)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = message,
            Duration = 5,
        })
    end)
end

local function init()
    notify("ShizaHub", Script.Name .. " loaded.")

    -- Put your script code here.
    -- Example:
    -- print("Loaded for", LocalPlayer.Name)
end

local ok, err = pcall(init)

if not ok then
    warn("[ShizaHub] " .. Script.Name .. " error: " .. tostring(err))
    notify("ShizaHub", Script.Name .. " error. Check console.")
end
