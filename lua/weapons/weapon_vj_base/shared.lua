if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
IncludeCS("ai_translations.lua")
---------------------------------------------------------------------------------------------------------------------------------------------
//SWEP.Base 					= "weapon_base"
SWEP.PrintName					= "VJ Weapon Base"
SWEP.Author 					= "DrVrej"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
SWEP.IsVJBaseWeapon				= true
	-- Client Settings ---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then
SWEP.Slot						= 2 -- Which weapon slot you want your SWEP to be in? (1 2 3 4 5 6) 
SWEP.SlotPos					= 4 -- Which part of that slot do you want the SWEP to be in? (1 2 3 4 5 6)
SWEP.SwayScale 					= 1 -- Default is 1, The scale of the viewmodel sway
SWEP.CSMuzzleFlashes 			= false -- Use CS:S Muzzle flash?
SWEP.DrawAmmo					= true -- Draw regular Garry's Mod HUD?
SWEP.DrawCrosshair				= true -- Draw Crosshair?
SWEP.DrawWeaponInfoBox 			= true -- Should the information box show in the weapon selection menu?
SWEP.BounceWeaponIcon 			= true -- Should the icon bounce in the weapon selection menu?
SWEP.RenderGroup 				= RENDERGROUP_OPAQUE
//SWEP.UseHands					= true
end
	-- Server Settings ---------------------------------------------------------------------------------------------------------------------------------------------
if (SERVER) then
SWEP.Weight						= 30 -- Decides whether we should switch from/to this
SWEP.AutoSwitchTo				= false -- Auto switch to this weapon when it's picked up
SWEP.AutoSwitchFrom				= false -- Auto switch weapon when the owner picks up a better weapon
end
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_EnableDontUseRegulate 	= true -- Used for VJ Base SNPCs, if enabled the SNPC will remove use regulate
SWEP.NPC_NextPrimaryFire 		= 0.15 -- Next time it can use primary fire
SWEP.NPC_TimeUntilFire	 		= 0.1 -- How much time until the bullet/projectile is fired?
SWEP.NPC_AllowCustomSpread		= true -- Should the weapon be able to change the NPC's spread?
SWEP.NPC_CustomSpread	 		= 1 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_AnimationTbl_Custom 	= {} -- Can be activity or sequence
SWEP.NPC_AnimationTbl_General 	= {ACT_RANGE_ATTACK1,ACT_RANGE_ATTACK1_LOW,ACT_IDLE_AGITATED,ACT_IDLE_AIM_AGITATED,ACT_RUN_AIM,ACT_WALK_AIM}
SWEP.NPC_AnimationTbl_Rifle 	= {ACT_WALK_AIM_RIFLE,ACT_RUN_AIM_RIFLE,ACT_RANGE_ATTACK_AR2,ACT_RANGE_ATTACK_AR2_LOW,ACT_IDLE_ANGRY_SMG1,ACT_RANGE_ATTACK_SMG1}
SWEP.NPC_AnimationTbl_Pistol 	= {ACT_RANGE_ATTACK_PISTOL,ACT_WALK_PISTOL}
SWEP.NPC_AnimationTbl_Shotgun 	= {ACT_RANGE_ATTACK_SHOTGUN,ACT_RANGE_ATTACK_SHOTGUN_LOW,ACT_IDLE_SHOTGUN_AGITATED}
SWEP.NPC_ReloadAnimationTbl_Custom = {} -- Can be activity or sequence
SWEP.NPC_ReloadAnimationTbl		= {ACT_RELOAD,ACT_RELOAD_START,ACT_RELOAD_FINISH,ACT_RELOAD_LOW,ACT_GESTURE_RELOAD,ACT_GESTURE_RELOAD_PISTOL,ACT_GESTURE_RELOAD_SMG1,ACT_GESTURE_RELOAD_SHOTGUN,ACT_SHOTGUN_RELOAD_START,ACT_SHOTGUN_RELOAD_FINISH,ACT_SMG2_RELOAD2,ACT_RELOAD_PISTOL,ACT_RELOAD_PISTOL_LOW,ACT_RELOAD_SMG1,ACT_RELOAD_SMG1_LOW,ACT_RELOAD_SHOTGUN,ACT_RELOAD_SHOTGUN_LOW,ACT_GESTURE_RELOAD,ACT_GESTURE_RELOAD_PISTOL,ACT_GESTURE_RELOAD_SMG1,ACT_GESTURE_RELOAD_SHOTGUN}
SWEP.NPC_HasReloadSound			= true -- Should it play a sound when the base detects the SNPC playing a reload animation?
SWEP.NPC_ReloadSound			= {} -- Sounds it plays when the base detects the SNPC playing a reload animation
SWEP.NPC_ReloadSoundLevel		= 60 -- How far does the sound go?
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.AnimPrefix					= "python"
SWEP.ViewModel					= "models/weapons/v_rif_ak47.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_ak47.mdl"
SWEP.HoldType 					= "ar2"
SWEP.ViewModelFlip				= false -- Flip the model? Usally used for CS:S models
SWEP.ViewModelFOV				= 55 -- Player FOV for the view model
SWEP.BobScale					= 1.5 -- Bob effect when moving
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage				= 5 -- Damage
SWEP.Primary.PlayerDamage		= 2 -- Put 1 to make it the same as above
SWEP.Primary.UseNegativePlayerDamage = false -- Should it use a negative number for the player damage?
SWEP.Primary.Force				= 5 -- Force applied on the object the bullet hits
SWEP.Primary.NumberOfShots		= 1 -- How many shots per attack?
SWEP.Primary.ClipSize			= 30 -- Max amount of bullets per clip
SWEP.Primary.DefaultClip		= 300 -- How much ammo do you get when you first pick up the weapon?
SWEP.Primary.Recoil				= 0.3 -- How much recoil does the player get?
SWEP.Primary.Cone				= 7 -- How accurate is the bullet? (Players)
SWEP.Primary.Delay				= 0.1 -- Time until it can shoot again
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerType			= "Tracer" -- Tracer type (Examples: AR2, laster, 9mm)
SWEP.Primary.TakeAmmo			= 1 -- How much ammo should it take on each shot?
SWEP.Primary.Automatic			= true -- Is it automatic?
SWEP.Primary.Ammo				= "SMG1" -- Ammo type
SWEP.Primary.Sound				= "vj_ak47/ak47_single.wav"
SWEP.AnimTbl_PrimaryFire		= {ACT_VM_PRIMARYATTACK}
SWEP.Primary.HasDistantSound	= true -- Does it have a distant sound when the gun is shot?
SWEP.Primary.DistantSound		= "vj_ak47/ak47_single_dist.wav" -- The distant sound
SWEP.Primary.DistantSoundLevel	= 140 -- Distant sound level
SWEP.Primary.DistantSoundPitch1	= 90 -- Distant sound pitch 1
SWEP.Primary.DistantSoundPitch2	= 110 -- Distant sound pitch 2
SWEP.Primary.DistantSoundVolume	= 1 -- Distant sound volume
SWEP.Primary.DisableBulletCode	= false -- The bullet won't spawn, this can be used when creating a projectile-based weapon
SWEP.Primary.AllowFireInWater	= false -- If true, you will be able to use primary fire in water
	-- Secondary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Secondary.Damage			= 5 -- Damage
SWEP.Secondary.PlayerDamage		= 2 -- Put 1 to make it the same as above
SWEP.Secondary.Force			= 5 -- Force applied on the object the bullet hits
SWEP.Secondary.NumberOfShots	= 1 -- How many shots per attack?
SWEP.Secondary.ClipSize			= -1 -- Max amount of bullets per clip
SWEP.Secondary.DefaultClip		= -1 -- How much ammo do you get when you first pick up the weapon?
SWEP.Secondary.Recoil			= 0.3 -- How much recoil does the player get?
SWEP.Secondary.Cone				= 7 -- How accurate is the bullet? (Players)
SWEP.Secondary.Delay			= 0.1 -- Time until it can shoot again
SWEP.Secondary.Tracer			= 1
SWEP.Secondary.TakeAmmo			= 1 -- How much ammo should it take on each shot?
SWEP.Secondary.Automatic		= false -- Is it automatic?
SWEP.Secondary.Ammo				= "none" -- Ammo type
SWEP.Secondary.Sound			= "vj_ak47/ak47_single.wav"
SWEP.AnimTbl_SecondaryFire		= {ACT_VM_SECONDARYATTACK}
SWEP.Secondary.DistantSound		= "vj_ak47/ak47_single_dist.wav" -- The distant sound
	-- General Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.DryFireSound				= {} -- The sound that it plays when the weapon is out of ammo
SWEP.DryFireSoundLevel 			= 50 -- Dry fire sound level
SWEP.DryFireSoundPitch1 		= 90 -- Dry fire sound pitch 1
SWEP.DryFireSoundPitch2 		= 100 -- Dry fire sound pitch 2
	-- Deployment Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.DelayOnDeploy 				= 1 -- Time until it can shoot again after deploying the weapon
SWEP.AnimTbl_Deploy				= {ACT_VM_DRAW}
SWEP.HasDeploySound				= true -- Does the weapon have a deploy sound?
SWEP.DeploySound				= {} -- Sound played when the weapon is deployed
	-- Reload Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasReloadSound				= false -- Does it have a reload sound? Remember even if this is set to false, the animation sound will still play!
SWEP.ReloadSound				= {}
SWEP.AnimTbl_Reload				= {ACT_VM_RELOAD}
SWEP.Reload_TimeUntilAmmoIsSet	= 1 -- Time until ammo is set to the weapon
SWEP.Reload_TimeUntilFinished	= 2 -- How much time until the player can play idle animation, shoot, etc.
	-- Idle Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasIdleAnimation			= false -- Does it have a idle animation?
SWEP.AnimTbl_Idle				= {ACT_VM_IDLE}
SWEP.NextIdle_Deploy			= 0.5 -- How much time until it plays the idle animation after the weapon gets deployed
SWEP.NextIdle_PrimaryAttack		= 0.1 -- How much time until it plays the idle animation after attacking(Primary)
	-- Independent Variables ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Deleted					= false
SWEP.Reloading 					= false
SWEP.InitHasIdleAnimation		= false
SWEP.AlreadyPlayedNPCReloadSound = false
SWEP.NPC_NextPrimaryFireT		= 0
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:SetDefaultValues(curtype)
	curtype = curtype or "ar2"
	
	if curtype == "pistol" then
		if VJ_PICKRANDOMTABLE(self.DeploySound) == false then self.DeploySound = {"weapons/draw_pistol.wav"} end
		if VJ_PICKRANDOMTABLE(self.DryFireSound) == false then self.DryFireSound = {"vj_weapons/dryfire_pistol.wav"} end
		if VJ_PICKRANDOMTABLE(self.NPC_ReloadSound) == false then self.NPC_ReloadSound = {"vj_weapons/reload_pistol.wav"} end
	elseif curtype == "revolver" then
		if VJ_PICKRANDOMTABLE(self.DeploySound) == false then self.DeploySound = {"weapons/draw_pistol.wav"} end
		if VJ_PICKRANDOMTABLE(self.DryFireSound) == false then self.DryFireSound = {"vj_weapons/dryfire_revolver.wav"} end
		if VJ_PICKRANDOMTABLE(self.NPC_ReloadSound) == false then self.NPC_ReloadSound = {"vj_weapons/reload_revolver.wav"} end
	elseif curtype == "shotgun" or curtype == "crossbow" then
		if VJ_PICKRANDOMTABLE(self.DeploySound) == false then self.DeploySound = {"weapons/draw_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.DryFireSound) == false then self.DryFireSound = {"vj_weapons/dryfire_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.NPC_ReloadSound) == false then self.NPC_ReloadSound = {"vj_weapons/reload_shotgun.wav"} end
	elseif curtype == "rpg" then
		if VJ_PICKRANDOMTABLE(self.DeploySound) == false then self.DeploySound = {"weapons/draw_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.DryFireSound) == false then self.DryFireSound = {"vj_weapons/dryfire_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.NPC_ReloadSound) == false then self.NPC_ReloadSound = {"vj_weapons/reload_rpg.wav"} end
	elseif curtype == "smg" or curtype == "ar2" then
		if VJ_PICKRANDOMTABLE(self.DeploySound) == false then self.DeploySound = {"weapons/draw_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.DryFireSound) == false then self.DryFireSound = {"vj_weapons/dryfire_rifle.wav"} end
		if VJ_PICKRANDOMTABLE(self.NPC_ReloadSound) == false then self.NPC_ReloadSound = {"vj_weapons/reload_rifle.wav"} end
	else
		print("niga")
		self.DryFireSound = {"vj_weapons/dryfire_rifle.wav"}
		self.NPC_ReloadSound = {"vj_weapons/reload_rifle.wav"}
		self.DeploySound = {"weapons/draw_rifle.wav"}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Initialize()
	self:SetHoldType(self.HoldType)
	if self.HasIdleAnimation == true then self.InitHasIdleAnimation = true end
	self:CustomOnInitialize()
	if (SERVER) then
		self:SetNPCMinBurst(10)
		self:SetNPCMaxBurst(20)
		self:SetNPCFireRate(10)
		
		if self.Owner:IsNPC() then
		self:SetWeaponHoldType(self.HoldType)
		if self.Owner:GetClass() == "npc_citizen" then
		self.Weapon.Owner:Fire("DisableWeaponPickup") end
		self.Weapon.Owner:SetKeyValue("spawnflags","256") -- Long Visibility Shooting since HL2 NPCs are blind
		if self.Owner:GetClass() != "npc_citizen" then
		hook.Add("Think",self,self.NPC_ServerThink)
		hook.Add("AlwaysThink",self,self.NPC_ServerThinkAlways)
		end
	 end
	end
	if self.Owner:IsNPC() && self.Owner.IsVJBaseSNPC then
		self.Owner.Weapon_StartingAmmoAmount = self.Primary.ClipSize
	end
	self:SetDefaultValues(self.HoldType)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnInitialize() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnPrimaryAttack_BeforeShoot() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnPrimaryAttack_AfterShoot() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnDeploy() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnIdle() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnReload() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnNPC_ServerThinkAlways() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnNPC_Reload() end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPC_ServerThinkAlways()
	if (CLIENT) then return end
	if !self:IsValid() or !self.Owner:IsValid() then return end
	self:CustomOnNPC_ServerThinkAlways()
	hook.Remove("AlwaysThink", self)
	hook.Add("AlwaysThink",self,self.NPC_ServerThinkAlways)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPC_ServerThink()
if (CLIENT) then return end
if !self:IsValid() or !self.Owner:IsValid() then return end
	self:NPC_ServerNextFire()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPC_ServerNextFire()
if (CLIENT) then return end
if !self:IsValid() && !IsValid(self.Owner) && !self.Owner:IsValid() && !self.Owner:IsNPC() then return end
if self:IsValid() && IsValid(self.Owner) && self.Owner:IsValid() && self.Owner:IsNPC() && self.Owner:GetActivity() == nil then return end

if self.Owner.IsReloadingWeapon == true && self.AlreadyPlayedNPCReloadSound == false && (VJ_IsCurrentAnimation(self.Owner,self.NPC_ReloadAnimationTbl) or VJ_IsCurrentAnimation(self.Owner,self.CurrentAnim_ReloadBehindCover) or VJ_IsCurrentAnimation(self.Owner,self.NPC_ReloadAnimationTbl_Custom)) then
	self.Owner.IsReloadingWeapon = false
	self:CustomOnNPC_Reload()
	self.AlreadyPlayedNPCReloadSound = true
	if self.NPC_HasReloadSound == true then VJ_EmitSound(self.Owner,self.NPC_ReloadSound,self.NPC_ReloadSoundLevel) end
	timer.Simple(3,function() if IsValid(self) then self.AlreadyPlayedNPCReloadSound = false end end)
end

local function FireCode()
	self:NPCShoot_Primary(ShootPos,ShootDir)
	//timer.Simple(0.1,function() if self:IsValid() && IsValid(self.Owner) && self.Owner:IsValid() && self.Owner:IsNPC() then self:NPCShoot_Primary(ShootPos,ShootDir) end end)
	//timer.Simple(0.2,function() if self:IsValid() && IsValid(self.Owner) && self.Owner:IsValid() && self.Owner:IsNPC() then self:NPCShoot_Primary(ShootPos,ShootDir) end end)
	hook.Remove("Think", self)
	//print(self.NPC_NextPrimaryFire)
	timer.Simple(0.15, function() hook.Add("Think",self,self.NPC_ServerNextFire) end)
	//self.NPC_NextPrimaryFireT = CurTime() + self.NPC_NextPrimaryFire
	/*if self:IsValid() && self.Owner:IsValid() && self.Owner.IsVJBaseSNPC == true && self.Owner.Weapon_ChangeIdleAnimToShoot == true then
		if self.Owner:GetEnemy() != nil then
			print("CHANGED HOlDTYPE")
			local htype = self:GetHoldType()
			self.ActivityTranslateAI[ACT_IDLE] = ACT_RANGE_ATTACK_PISTOL
			if htype == "ar2" then
				self.ActivityTranslateAI[ACT_IDLE] = ACT_RANGE_ATTACK_AR2
			end
			if htype == "smg" then
				self.ActivityTranslateAI[ACT_IDLE] = ACT_RANGE_ATTACK_SMG1
			end
			if htype == "crossbow" or htype == "shotgun" then
				self.ActivityTranslateAI[ACT_IDLE] = ACT_RANGE_ATTACK_SHOTGUN
			end
			if htype == "rpg" then
				self.ActivityTranslateAI[ACT_IDLE] = ACT_CROUCHIDLE
			end
		end
	else
		print("CHANGED TO NORMAL HOLDTYPE")
		self:SetupWeaponHoldTypeForAI(self:GetHoldType())
	end*/
end
	//self.Owner:Weapon_TranslateActivity(self.Owner:GetActivity())
	//print(self:TranslateActivity(self.Owner:GetActivity()))
	//print(self.Owner:GetActivity())
	//if self.NPC_UsePistolBehavior == true then
	/*if self:IsValid() && IsValid(self.Owner) && self.Owner:IsValid() && self.Owner:IsNPC() then if self.Owner:GetActivity() != nil then
		if self.Owner:SelectWeightedSequence(self.Owner:GetActivity()) == -1 && self.Owner:GetActivity() != ACT_RANGE_ATTACK1 then 
			print("ERROR: VJ Weapon Base was unable to get a correct animation for its owner")
			//self.Owner.DoingWeaponAttack = true
			//self.Owner:VJ_ACT_PLAYACTIVITY(VJ_PICKRANDOMTABLE(self.Owner.AnimTbl_WeaponAttack),false,0,true)
			//return
			end
		end
	end*/
	if self:NPCAbleToShoot() == true then FireCode() end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPCAbleToShoot()
	if self:IsValid() && IsValid(self.Owner) && self.Owner:IsValid() && self.Owner:IsNPC() then
		if self.Owner:GetActivity() != nil && (table.HasValue(self.NPC_AnimationTbl_General,self.Owner:GetActivity()) or table.HasValue(self.NPC_AnimationTbl_Rifle,self.Owner:GetActivity()) or table.HasValue(self.NPC_AnimationTbl_Pistol,self.Owner:GetActivity()) or table.HasValue(self.NPC_AnimationTbl_Shotgun,self.Owner:GetActivity()) or VJ_IsCurrentAnimation(self.Owner,self.NPC_AnimationTbl_Custom)) then
			if self.Owner:VJ_GetEnemy(true) != nil then
			return true
			end
		end
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:NPCShoot_Primary(ShootPos,ShootDir)
	//self:SetClip1(self:Clip1() -1)
	//if CurTime() > self.NPC_NextPrimaryFireT then
	//self.NPC_NextPrimaryFireT = CurTime() + self.NPC_NextPrimaryFire
	if (!self:IsValid()) or (!self.Owner:IsValid()) then return end
	if self.Owner.VJ_IsBeingControlled == false && (!self.Owner:GetEnemy()) then return end
	if self.Owner.VJ_IsBeingControlled == false && (!self.Owner:Visible(self.Owner:GetEnemy())) then return end
	if self.Owner.IsVJBaseSNPC == true then
		//self.Owner.Weapon_TimeSinceLastShot = 0
		self.Owner.NextWeaponAttackAimPoseParametersReset = CurTime() + 1
		self.Owner:WeaponAimPoseParameters()
		//if self.Owner.IsVJBaseSNPC == true then self.Owner.Weapon_TimeSinceLastShot = 0 end
	end
	timer.Simple(self.NPC_TimeUntilFire,function()
	if IsValid(self) && IsValid(self.Owner) && self:NPCAbleToShoot() == true && CurTime() > self.NPC_NextPrimaryFireT then
		self:PrimaryAttack()
		self.NPC_NextPrimaryFireT = CurTime() + self.NPC_NextPrimaryFire
		if self.Owner.IsVJBaseSNPC == true then self.Owner.Weapon_TimeSinceLastShot = 0 end
		end
	end)
	//end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Precache()
	util.PrecacheSound(self.Primary.Sound)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:GetCapabilities()
	return bit.bor(CAP_WEAPON_RANGE_ATTACK1,CAP_INNATE_RANGE_ATTACK1)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:PrimaryAttack(ShootPos,ShootDir)
	//if self.Owner:KeyDown(IN_RELOAD) then return end
	//self.Owner:SetFOV( 45, 0.3 )
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	if self.Reloading == true then return end
	if self.Owner:IsNPC() && self.Owner.VJ_IsBeingControlled == false && self.Owner:GetEnemy() == nil then return end
	if self.Owner:IsPlayer() && self.Primary.AllowFireInWater == false && self.Owner:WaterLevel() == 3 && self.Reloading == false then self.Weapon:EmitSound(VJ_PICKRANDOMTABLE(self.DryFireSound),self.DryFireSoundLevel,math.random(self.DryFireSoundPitch1,self.DryFireSoundPitch2)) return end
	if self:Clip1() <= 0 && self.Reloading == false then self.Weapon:EmitSound(VJ_PICKRANDOMTABLE(self.DryFireSound),self.DryFireSoundLevel,math.random(self.DryFireSoundPitch1,self.DryFireSoundPitch2)) return end
	if (!self:CanPrimaryAttack()) then return end
	self:CustomOnPrimaryAttack_BeforeShoot()
	if (SERVER) then
		sound.Play(Sound(self.Primary.Sound),self:GetPos(),80,math.random(90,100))
		if self.Primary.HasDistantSound == true then
		sound.Play(Sound(self.Primary.DistantSound),self:GetPos(),self.Primary.DistantSoundLevel,math.random(self.Primary.DistantSoundPitch1,self.Primary.DistantSoundPitch2),self.Primary.DistantSoundVolume)
		end
	end
	//self.Weapon:EmitSound(Sound(self.Primary.Sound),80,self.Primary.SoundPitch)
	if self.Primary.DisableBulletCode == false then
	local bullet = {}
		bullet.Num = self.Primary.NumberOfShots
		bullet.Src = self.Owner:GetShootPos()
		bullet.Dir = self.Owner:GetAimVector()
			/*bullet.Callback = function(attacker, tr, dmginfo)
			local laserhit = EffectData()
			laserhit:SetOrigin(tr.HitPos)
			laserhit:SetNormal(tr.HitNormal)
			laserhit:SetScale(80)
			util.Effect("VJ_Small_Explosion1", laserhit)
			
			bullet.Callback = function(attacker, tr, dmginfo)
			local laserhit = EffectData()
			laserhit:SetOrigin(tr.HitPos)
			laserhit:SetNormal(tr.HitNormal)
			laserhit:SetScale(25)
			util.Effect("AR2Impact", laserhit)
			end*/
			//tr.HitPos:Ignite(8,0)
			//return true end
		if self.Owner:IsPlayer() then
			bullet.Spread = Vector((self.Primary.Cone /60)/4,(self.Primary.Cone /60)/4,0)
		end
		bullet.Tracer = self.Primary.Tracer
		bullet.TracerName = self.Primary.TracerType
		bullet.Force = self.Primary.Force
		if self.Owner:IsPlayer() then
			if self.Primary.UseNegativePlayerDamage == true then
			bullet.Damage = self.Primary.Damage -self.Primary.PlayerDamage else
			bullet.Damage = self.Primary.Damage *self.Primary.PlayerDamage end
		else
			bullet.Damage = self.Primary.Damage
		end
		bullet.AmmoType = self.Primary.Ammo
	self.Owner:FireBullets(bullet)
	else
	if self.Owner:IsNPC() && self.Owner.IsVJBaseSNPC == true then
		self.Owner.Weapon_ShotsSinceLastReload = self.Owner.Weapon_ShotsSinceLastReload + 1
		end
	end
	if GetConVarNumber("vj_wep_nomuszzleflash") == 0 then
	self.Owner:MuzzleFlash() end
	self:PrimaryAttackEffects()
	if self.Owner:IsPlayer() then
	self:ShootEffects("ToolTracer")
	self.Weapon:SendWeaponAnim(VJ_PICKRANDOMTABLE(self.AnimTbl_PrimaryFire))
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self.Owner:ViewPunch(Angle(-self.Primary.Recoil,0,0)) end
	if !self.Owner:IsNPC() then
		self:TakePrimaryAmmo(self.Primary.TakeAmmo)
	end
	self:CustomOnPrimaryAttack_AfterShoot()
	//self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	timer.Simple(self.NextIdle_PrimaryAttack,function() if self:IsValid() then self:DoIdleAnimation() end end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:SecondaryAttack()
	return false -- We don't want a secondary shot
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:DoIdleAnimation()
	if self.HasIdleAnimation == false then return end
	if self.Reloading == true then return end
	self:CustomOnIdle()
	self.Weapon:SendWeaponAnim(VJ_PICKRANDOMTABLE(self.AnimTbl_Idle))
end
---------------------------------------------------------------------------------------------------------------------------------------------
/*function SWEP:PrimaryAttackEffects()
	local vjeffect = EffectData()
	vjeffect:SetEntity(self.Weapon)
	vjeffect:SetOrigin(self.Owner:GetShootPos())
	vjeffect:SetNormal(self.Owner:GetAimVector())
	vjeffect:SetAttachment(1)
	util.Effect("VJ_Weapon_RifleMuzzle1",vjeffect)
	
	if GetConVarNumber("vj_wep_nobulletshells") == 0 then
	if !self.Owner:IsPlayer() then
	local vjeffect = EffectData()
	vjeffect:SetEntity(self.Weapon)
	vjeffect:SetOrigin(self.Owner:GetShootPos())
	vjeffect:SetNormal(self.Owner:GetAimVector())
	vjeffect:SetAttachment(1)
	util.Effect("VJ_Weapon_RifleShell1",vjeffect) end
	end

	if (SERVER) then
	if GetConVarNumber("vj_wep_nomuszzleflash") == 0 then
	local FireLight1 = ents.Create("light_dynamic")
	FireLight1:SetKeyValue("brightness", "2")
	if self.Owner:IsPlayer() then
	FireLight1:SetKeyValue("distance", "200") else FireLight1:SetKeyValue("distance", "150") end
	FireLight1:SetLocalPos(self.Owner:GetShootPos() +self:GetForward()*40 + self:GetUp()*-40)
	FireLight1:SetLocalAngles(self:GetAngles())
	FireLight1:Fire("Color", "255 150 60")
	FireLight1:SetParent(self)
	FireLight1:Spawn()
	FireLight1:Activate()
	FireLight1:Fire("TurnOn", "", 0)
	self:DeleteOnRemove(FireLight1)
	timer.Simple(0.07,function() if self:IsValid() then FireLight1:Remove() end end)
	end
 end
end*/
---------------------------------------------------------------------------------------------------------------------------------------------
/*function SWEP:FireAnimationEvent(pos,ang,event,options)
	//local vjeffect = EffectData()
	//vjeffect:SetEntity(self.Weapon)
	//vjeffect:SetOrigin(self.Owner:GetShootPos())
	//vjeffect:SetNormal(self.Owner:GetAimVector())
	//vjeffect:SetAttachment(2)
	//util.Effect("VJ_Weapon_RifleShell1",vjeffect)
	
	//print(event)
	if GetConVarNumber("vj_wep_nomuszzleflash") == 1 then
	if event == 5001 then 
		return true end 
	end
	
	if GetConVarNumber("vj_wep_nobulletshells") == 1 then
	if event == 20 then 
		return true end 
	end
end*/
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Think()
	//if CurTime() > self.NextIdleT then
	//self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	//self.NextIdleT = CurTime() + self.NextIdleTime
	//end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Reload()
if not IsValid(self) then return end
if not IsValid(self.Owner) then return end
if !self.Owner:Alive() then return end
if not self.Owner:IsPlayer() then return end
if self.Owner:GetAmmoCount(self.Primary.Ammo) == 0 then return end
if !self.Owner:KeyDown(IN_RELOAD) then return end
if self.Reloading == true then return end
	local smallerthanthis = self.Primary.ClipSize - 1
	if self:Clip1() <= smallerthanthis then
	local setcorrectnum = self.Primary.ClipSize - self:Clip1()
	local test = setcorrectnum + self:Clip1()
	self.Reloading = true
	self:CustomOnReload()
	if self.HasReloadSound == true then
	self.Weapon:EmitSound(VJ_PICKRANDOMTABLE(self.ReloadSound),50,math.random(90,100)) end
	if self.Owner:IsPlayer() then
	self.Weapon:SendWeaponAnim(VJ_PICKRANDOMTABLE(self.AnimTbl_Reload)) //self.Weapon:SendWeaponAnim(VJ_PICKRANDOMTABLE(self.AnimTbl_Reload))
	self.Owner:SetAnimation(PLAYER_RELOAD)
	timer.Simple(self.Reload_TimeUntilAmmoIsSet,function() if self:IsValid() then self.Owner:RemoveAmmo(setcorrectnum,self.Primary.Ammo) self.Weapon:SetClip1(test) end end)
	timer.Simple(self.Reload_TimeUntilFinished,function() if self:IsValid() then self.Reloading = false self:DoIdleAnimation() end end)
	end
  return true
 end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Deploy()
	if self.InitHasIdleAnimation == true then self.HasIdleAnimation = true end
	if self.Owner:IsPlayer() then
	self:CustomOnDeploy()
	self.Weapon:SendWeaponAnim(VJ_PICKRANDOMTABLE(self.AnimTbl_Deploy))
	if self.HasDeploySound == true then
	self.Weapon:EmitSound(VJ_PICKRANDOMTABLE(self.DeploySound),50,math.random(90,100)) end
	self.Weapon:SetNextPrimaryFire(CurTime() +self.DelayOnDeploy) end
	timer.Simple(self.NextIdle_Deploy,function() if self:IsValid() then self:DoIdleAnimation() end end)
	return true -- Or else the player won't be able to get the weapon!
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Holster(wep)
	//if CLIENT then return end
	if self == wep then return end
	if self.Reloading == true then return end
	self.HasIdleAnimation = false
	//self:SendWeaponAnim(ACT_VM_HOLSTER)
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Equip()
	if self.Owner:IsPlayer() then
		self.Owner:GiveAmmo(self.Primary.ClipSize, self.Primary.Ammo)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:OwnerChanged()
	//self:GetOwner()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:OnRemove()
	self:StopParticles()
	self.Deleted = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then

function SWEP:DrawWorldModel()
	self:DrawModel()
	end
end