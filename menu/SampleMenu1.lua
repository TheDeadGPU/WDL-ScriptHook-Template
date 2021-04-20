local function SampleMenu1()
	local menu = UI.SimpleMenu()
	menu:SetTitle("Sample Menu 1")

	menu:AddButton("I am a button","Button subtext here", function()
		ScriptHook.ShowNotification(1, "Button Pressed", "")
	end)

	menu:AddCheckbox("I am checkbox", "Checkbox subtext here", function()
		ScriptHook.ShowNotification(1, "Checkbox Toggled", "")
	end)

	return menu
end

table.insert(SimpleTrainerMenuItems, { "Sample Menu 1", "Demonstration of UI Elements", Script():CacheMenu(SampleMenu1) })