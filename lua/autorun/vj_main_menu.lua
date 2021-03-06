/*--------------------------------------------------
	=============== Main Menu ===============
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load the main menu for VJ Base
--------------------------------------------------*/
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
local function CleanVJAll(ply)
	game.CleanUpMap()
	if SERVER then
	ply:SendLua("GAMEMODE:AddNotify(\"Cleaned Up Everything!\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_all", CleanVJAll)
----=================================----
local function CleanSNPCsCorpse(ply)
    local i = 0
	//local cleancvjcorpse = ents.FindByClass("prop_ragdoll")
	//local cleancvjgib = ents.FindByClass("obj_vj_gib_*")
	//table.Add(cleancvjcorpse,cleancvjgib)
    //for k, v in pairs(cleancvjcorpse,cleancvjgib) do
	local getalldeadnigers = ents.GetAll()
	for k, v in pairs(getalldeadnigers) do
		if v.IsVJBaseCorpse == true or v:GetClass() == "obj_vj_gib_*" then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		/*local cleandatsnpc = ents.GetAll()
        for _, x in pairs(cleandatsnpc) do
			if v:IsNPC() && v:IsValid() && v.IsVJBaseSNPC == true then
			x.VJCorpseDeleted = true
			//if x:IsValid() then x.Corpse = ents.Create(x.DeathEntityType)
			end
		end*/
	 end
	end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Corpses\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_snpcscorpse", CleanSNPCsCorpse)
----=================================----
local function CleanSNPCs(ply)
    local i = 0
	//local vjanimalcleanup = ents.FindByClass("npc_vjanimal_*")
	//local cleandatsnpc = ents.FindByClass("npc_vj_*")
	//table.Add(cleandatsnpc,vjanimalcleanup)
	local cleandatsnpc = ents.GetAll()
        for k, v in pairs(cleandatsnpc) do
		if v:IsNPC() && v:IsValid() && v.IsVJBaseSNPC == true then
        // if v:ValidEntity() then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		end            
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." SNPCs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
    //ply:ChatPrint("Removed "..i.." SNPCs")
end
    concommand.Add("vj_cleanup_snpcs", CleanSNPCs)
----=================================----
local function CleanNPCs(ply)
    local i = 0
	local Gettheents = ents.GetAll()
	table.Add(Gettheents)
        for k, v in pairs(Gettheents) do
        // if v:ValidEntity() then
		if v:IsNPC() then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		end            
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." (S)NPCs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
    //ply:ChatPrint("Removed "..i.." SNPCs")
end
    concommand.Add("vj_cleanup_s_npcs", CleanNPCs)
----=================================----
local function CleanDecals(ply)
	local vjplayerdecal = player.GetAll()
	table.Add(vjplayerdecal)
        for k, v in pairs(vjplayerdecal) do
		v:ConCommand("r_cleardecals")        
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Decals\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_decals", CleanDecals)
----=================================----
local function RemovePlyAmmo(ply)
	ply:RemoveAllAmmo()
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Your Ammo\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_playerammo", RemovePlyAmmo)
----=================================----
local function RemoveAllWeapon(ply)
	ply:StripWeapons()
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Your Weapons\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_playerweapon", RemoveAllWeapon)
----=================================----
local function CleanVJGibs(ply)
    local i = 0
	local cleancvjgib = ents.FindByClass("obj_vj_gib_*")
	table.Add(cleancvjgib)
    for k, v in pairs(cleancvjgib) do
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1           
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Gibs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_vjgibs", CleanVJGibs)
----=================================----
local function CleanProps(ply)
    local i = 0
	local cleanupprops = ents.FindByClass("prop_physics")
	table.Add(cleanupprops)
    for k, v in pairs(cleanupprops) do
	 if v:GetParent() == NULL or (IsValid(v:GetParent()) && v:GetParent():Health() <= 0 && (v:GetParent():IsNPC() or v:GetParent():IsPlayer())) then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
	 end
	end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Props\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_props", CleanProps)
----=================================----
local function CleanGroundWeapons(ply)
    local i = 0
	local cleanupgroundweps1 = ents.FindByClass("ai_weapon_*")
	local cleanupgroundweps2 = ents.FindByClass("weapon_*")
	table.Add(cleanupgroundweps1,cleanupgroundweps2)
    for k, v in pairs(cleanupgroundweps1,cleanupgroundweps2) do
		if v:IsValid() && v:GetOwner() == NULL then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
       end
	  end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Ground Weapons\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_groundweapons", CleanGroundWeapons)
----=================================----
local function CleanSpawners(ply)
    local i = 0
	local Gettheents = ents.GetAll()
	table.Add(Gettheents)
        for k, v in pairs(Gettheents) do
		if v.IsVJBaseSpawner == true then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1          
		end
	   end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Spawners\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_spawners", CleanSpawners)
---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then
local function VJ_MAINMENU_CLEANUP(Panel)
	if !game.SinglePlayer() then
	if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
		Panel:AddControl( "Label", {Text = "You are not a admin!"})
		Panel:ControlHelp("Notice: Only admins use the clean up buttons.")
		return
		end
	end
	Panel:ControlHelp(" ") -- Spacer
	Panel:ControlHelp("Notice: Only admins use the clean up buttons.")
	Panel:AddControl("Button", {Label = "Clean Up Everything", Command = "vj_cleanup_all"})
	Panel:AddControl("Button", {Label = "Remove all VJ SNPCs", Command = "vj_cleanup_snpcs"})
	Panel:AddControl("Button", {Label = "Remove all (S)NPCs", Command = "vj_cleanup_s_npcs"})
	Panel:AddControl("Button", {Label = "Remove all Spawners", Command = "vj_cleanup_spawners"})
	Panel:AddControl("Button", {Label = "Remove all Corpses", Command = "vj_cleanup_snpcscorpse"})
	Panel:AddControl("Button", {Label = "Remove all VJ Gibs (Entity Only!)", Command = "vj_cleanup_vjgibs"})
	Panel:AddControl("Button", {Label = "Remove all Ground Weapons", Command = "vj_cleanup_groundweapons"})
	Panel:AddControl("Button", {Label = "Remove all Props", Command = "vj_cleanup_props"})
	Panel:AddControl("Button", {Label = "Remove all Decals", Command = "vj_cleanup_decals"})
	Panel:AddControl("Button", {Label = "Remove all of your Weapons", Command = "vj_cleanup_playerweapon"})
	Panel:AddControl("Button", {Label = "Remove all of your Ammo", Command = "vj_cleanup_playerammo"})
	Panel:AddControl("Button", {Label = "Stop all Sounds", Command = "stopsound"})
end
---------------------------------------------------------------------------------------------------------------------------------------------
local function VJ_MAINMENU_MISC(Panel)
-- Don't forget if "http" is with "s" it won't work! Take the "s" off!
	local bugr = vgui.Create("DButton") -- Bug Report
	bugr:SetFont("CloseCaption_Bold")
	bugr:SetText("Report a Bug")
	bugr:SetSize(150, 35)
	bugr:SetColor(Color(255,0,0,255))
	bugr.DoClick = function(bugr)
		gui.OpenURL("http://docs.google.com/forms/d/1ZS1rSFtY4j6hJMZ_eGktYoBGScuW0GZdX4gjEJpBjjU/viewform?pli=1")
	end
	Panel:AddPanel(bugr)
	
	local suggest = vgui.Create("DButton") -- Suggestions
	suggest:SetFont("DermaDefaultBold")
	suggest:SetText("Suggest Something")
	suggest:SetSize(150, 20)
	suggest:SetColor(Color(0,0,255,200))
	suggest.DoClick = function(suggest)
		gui.OpenURL("http://docs.google.com/forms/d/1dMj6NWEmIpP7JYRxETZtKAl_aSQ6NUY4Fp3Ci2Olc2o/viewform?pli=1")
	end
	Panel:AddPanel(suggest)
	
	Panel:ControlHelp(" ") -- Spacer
	
	Panel:AddControl("Label", {Text = "Follow/subscribe/like/join one of this links to get updates about my addons!"})
	Panel:ControlHelp("Thanks for your support!")
	
	/*local webstite = vgui.Create("DButton") -- Website
	webstite:SetFont("TargetID")
	webstite:SetText("Register on my Website!")
	webstite:SetSize(150, 25)
	webstite:SetColor(Color(76,153,0,255))
	webstite.DoClick = function(webstite)
		gui.OpenURL("http://vrejgaming.webs.com")
	end
	Panel:AddPanel(webstite)*/
	
	local steaml = vgui.Create("DButton") -- Steam Group
	steaml:SetFont("TargetID")
	steaml:SetText("Join my Steam Group!")
	steaml:SetSize(150, 25)
	steaml:SetColor(Color(76,153,0,255))
	steaml.DoClick = function(steaml)
		gui.OpenURL("http://steamcommunity.com/groups/vrejgaming")
	end
	Panel:AddPanel(steaml)
	
	local fbl = vgui.Create("DButton") -- Facebook
	fbl:SetFont("TargetID")
	fbl:SetText("Like my Facebook Page!")
	fbl:SetSize(150, 25)
	fbl:SetColor(Color(76,153,0,255))
	fbl.DoClick = function(fbl)
		gui.OpenURL("http://www.facebook.com/VrejGaming")
	end
	Panel:AddPanel(fbl)
	
	local ytl = vgui.Create("DButton") -- YouTube
	ytl:SetFont("TargetID")
	ytl:SetText("Subscribe my YouTube Channel!")
	ytl:SetSize(150, 25)
	ytl:SetColor(Color(76,153,0,255))
	ytl.DoClick = function(ytl)
		gui.OpenURL("http://www.youtube.com/user/gmod95/featured")
	end
	Panel:AddPanel(ytl)

	local tweetl = vgui.Create("DButton") -- Twitter
	tweetl:SetFont("TargetID")
	tweetl:SetText("Follow my Twitter Page!")
	tweetl:SetSize(150, 25)
	tweetl:SetColor(Color(76,153,0,255))
	tweetl.DoClick = function(tweetl)
		gui.OpenURL("http://twitter.com/vrejgaming")
	end
	Panel:AddPanel(tweetl)
	
	Panel:ControlHelp(" ") -- Spacer
	
	Panel:AddControl("Label", {Text = "To Donate:"})
	Panel:ControlHelp("By donating, you will be encouraging me to keep making and updating addons! Thank you!")
	local donate = vgui.Create("DButton") -- Donate
	donate:SetFont("TargetID")
	donate:SetText("Donate to Help!")
	donate:SetSize(150, 30)
	donate:SetColor(Color(76,153,255,255))
	donate.DoClick = function(donate)
		gui.OpenURL("https://www.patreon.com/drvrej?ty=h")
	end
	Panel:AddPanel(donate)
	
	/*HTMLTest = vgui.Create("HTML")
	HTMLTest:SetPos(50,50)
	HTMLTest:SetSize(ScrW() - 100, ScrH() - 100)
	HTMLTest:OpenURL("http://steamcommunity.com/sharedfiles/filedetails/?id=131759821")	*/
	//Panel:AddPanel(HTMLTest)
end
---------------------------------------------------------------------------------------------------------------------------------------------
local function VJ_MAINMENU_ADMINSERVER(Panel)
	if !game.SinglePlayer() then
	if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
		Panel:AddControl( "Label", {Text = "You are not a admin!"})
		Panel:ControlHelp("Notice: Only admins use this settings.")
		return
		end
	end
	//Panel:AddControl("Header",{Description = "TESTINGGGGGGGGGGG"})
	Panel:AddControl( "Label", {Text = "Notice: Only admins can change this settings."})
	Panel:AddControl( "Label", {Text = "WARNING: SOME SETTINGS NEED CHEATS ENABLED!"})
	local vj_resetadminmenu = {Options = {}, CVars = {}, Label = "Reset Everything:", MenuButton = "0"}
	//vj_resetadminmenu:SetText("Select Default to reset everything")
	vj_resetadminmenu.Options["#vjbase.menugeneral.default"] = {
	sbox_noclip = "1",
	sbox_weapons =	"1",
	sbox_playershurtplayers = "1",
	sbox_godmode = "0",
	sv_gravity = "600",
	host_timescale = "1",
	phys_timescale = "1",
	}
	Panel:AddControl("ComboBox", vj_resetadminmenu)
	Panel:ControlHelp(" ") -- Spacer
	Panel:AddControl("Checkbox", {Label = "Allow NoClip", Command = "sbox_noclip"})
	Panel:AddControl("Checkbox", {Label = "Allow Weapons", Command = "sbox_weapons"})
	Panel:AddControl("Checkbox", {Label = "Allow PvP", Command = "sbox_playershurtplayers"})
	Panel:AddControl("Checkbox", {Label = "God Mode (Everyone)", Command = "sbox_godmode"})
	Panel:AddControl("Checkbox", {Label = "Bone Manipulate NPCs", Command = "sbox_bonemanip_npc"})
	Panel:AddControl("Checkbox", {Label = "Bone Manipulate Players", Command = "sbox_bonemanip_player"})
	Panel:AddControl("Checkbox", {Label = "Bone Manipulate Others", Command = "sbox_bonemanip_misc"})
	Panel:AddControl("Slider",{Label = "General TimeScale",Type = "Float",min = 0.1,max = 10,Command = "host_timescale"})
	Panel:AddControl("Slider",{Label = "Physics TimeScale",Type = "Float",min = 0,max = 2,Command = "phys_timescale"})
	Panel:AddControl("Slider",{Label = "General Gravity",Type = "Float",min = -200,max = 600,Command = "sv_gravity"})
	Panel:AddControl( "Label", {Text = "Max Props/Entities:"})
	for _, x in pairs(cleanup.GetTable()) do
		if (!GetConVar("sbox_max"..x)) then continue end
		Panel:AddControl("Slider",{Label = "#max_"..x, Command = "sbox_max"..x, Min = "0", Max = "9999"})
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function VJ_ADDTOMENU_MAIN()
	spawnmenu.AddToolMenuOption( "DrVrej", "VJ Base", "Clean Up", "Clean Up", "", "", VJ_MAINMENU_CLEANUP, {} )
	spawnmenu.AddToolMenuOption( "DrVrej", "VJ Base", "Contact and Support", "Contact and Support", "", "", VJ_MAINMENU_MISC, {} )
	spawnmenu.AddToolMenuOption( "DrVrej", "VJ Base", "Admin Server Settings", "Admin Server Settings", "", "", VJ_MAINMENU_ADMINSERVER, {} )
end
	hook.Add( "PopulateToolMenu", "VJ_ADDTOMENU_MAIN", VJ_ADDTOMENU_MAIN )
end
---------------------------------------------------------------------------------------------------------------------------------------------
/*function vrej_welcome(ply)
timer.Simple(1, function()
ply:ChatPrint("------------------- DrVrej's SNPCs -------------------")
ply:ChatPrint("If you find a bug, contact me to my Steam Account or My website")
ply:ChatPrint("Make sure you have VJ Base! Or else my addons won't work!")
ply:ChatPrint("SignUp On My Website! http://vrejgaming.webs.com/")
ply:ChatPrint("Join My Steam Group! http://steamcommunity.com/groups/vrejgaming")
ply:ChatPrint("Like My Page On FaceBook! http://www.facebook.com/VrejGaming")
ply:ChatPrint("Follow Me on Twitter! https://twitter.com/vrejgaming")
ply:ChatPrint("Subscribe me on YouTube! http://www.youtube.com/user/gmod95")
end)
end
hook.Add("PlayerInitialSpawn","vrej_welcome",vrej_welcome)*/