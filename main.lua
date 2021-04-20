-- Settings
include("settings/Notifications.lua")

-- Menu
include("menu/menu.lua")

local script = Script()
script.Entities = {}

function script:OnLoad()
	print("Sample Trainer Template main loaded!")
	--self:ApplyNotificationSettings()
end

function script:OnUpdate(time, dt)
	--self:UpdateCinematic(time, dt)
end

function script:OnRender()
end

function script:InitCallbacks()
end

function script:OnUnload()

    for _,v in pairs(self.Entities) do
        RemoveEntity(v)
    end
end