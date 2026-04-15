repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui")

local StarterGui = game:GetService("StarterGui")

function Notify(data)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = data.Title or "Notification",
            Text = data.Content or "",
            Duration = data.Duration or 5
        })
    end)
end

local function getScriptId()
    local g = game.PlaceId
    if g == 9363735110 then return "a9f3c7d6e2b41f5a8c9d0e3b7a6c1d4f"
    elseif g == 3647333358 then return "4b7e9a2c5d1f6e8a3c0b9d7f2a4e6c1b"
    else return nil end
end

local function getGameName()
    local g = game.PlaceId
    if g == 9363735110 then return "Escape Tsunami For Brainrot"
    elseif g == 3647333358 then return "Evade"
    else return "Unknown Game"
    end
end

local scriptId = getScriptId()
local gameName = getGameName()

if scriptId then
    Notify({
        Title = "Vexora Hub",
        Content = gameName .. " script loaded!",
        Duration = 10
    })

    local mainUrl = "https://triplesixxx-xyz.vercel.app/api/" .. scriptId .. "/loader.lua"
    local success, result = pcall(function()
        return loadstring(game:HttpGet(mainUrl))()
    end)

    if not success then
        Notify({
            Title = "NixHub",
            Content = "Failed to load script: " .. tostring(result),
            Duration = 8
        })
    end

    task.wait(5)
    Notify({
        Title = "NixHub",
        Content = "Join our Discord for updates!",
        Duration = 5
    })
else
    Notify({
        Title = "NixHub",
        Content = "Game not supported!",
        Duration = 8
    })
end
