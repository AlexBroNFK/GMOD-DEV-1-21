SWEP.RTOpaque = true
SWEP.UseHands	= true
SWEP.Category				= "TFA Огнестрел"
SWEP.Author				= "CRANK07 & ZACKS & 1nazuma"
SWEP.Manufacturer = "Transformational Defense Industries" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Contact				= ""
SWEP.Purpose				= "Дважды нажмите E чтобы поменять угол наклона в прицеливании" --Purpose Tooltip
SWEP.Instructions				= ""
SWEP.PrintName				= "KRISS Vector"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 15			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= true		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.ShowWorldModel = true
SWEP.AdminOnly 	= true
SWEP.CanJam = false 
SWEP.JamChance = 0
SWEP.JamFactor = 0

SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 60
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/tfa_trepang2/C_trepang2_VECTOR.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/tfa_trepang2/w_t2_vector.mdl"	-- Weapon world model
SWEP.Base				= "tfa_bash_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.VMPos = Vector(2,0,1) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0.3,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_W = {
	[3] = 1,
	[2] = 1,
	[1] = 1,
}
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.

SWEP.Primary.Sound			= Sound("vectorfire1")		-- Script that calls the primary fire sound
SWEP.Primary.SilencedSound = Sound("vectorfire2") -- This is the sound of the weapon, when silenced.
SWEP.Primary.RPM			= 1800			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 50		-- Size of a clip
SWEP.Primary.DefaultClip		= 150 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "smg1"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp = 0.04 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.04 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.04 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.04
--Firing Cone Related
SWEP.Primary.Spread = .03 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .009 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 4 -- How far the spread can expand when you shoot. Example val: 2.5 扩散最大程度.例:2.5
SWEP.Primary.SpreadIncrement = 0.5 -- What percentage of the modifier is added on, per shot.  Example val: 1/3.5 扩散每一发能扩大多少.例:1/3.5
SWEP.Primary.SpreadRecovery = 4 -- How much the spread recovers, per second. Example val: 3 每一秒扩散恢复速度.例:3

SWEP.Secondary.IronFOV			= 65		-- How much you 'zoom' in. Less is more! 	


SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 25	-- Base damage per bullet

--Range Related
SWEP.Primary.Range = 0.5 * (3280.84 * 16) -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Movespeed
SWEP.MoveSpeed = 0.99 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed  * 0.99 --Multiply the player's movespeed by this when sighting.
SWEP.IronSightTime = 0.3
--Misc
SWEP.IronRecoilMultiplier = 1 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 1 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

SWEP.IronSightsReloadEnabled = true
SWEP.IronSightsReloadLock = false

SWEP.ThirdPersonReloadDisable = false

SWEP.BlowbackEnabled = true -- Enable Blowback?
SWEP.BlowbackVector = Vector(0, 0, 0) -- Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackAngle = Angle(0, 0, 0)
SWEP.BlowbackCurrentRoot = 0 -- Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 -- Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil -- Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true -- Only do blowback on ironsights
SWEP.Blowback_PistolMode = false -- Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true -- Shoot shells through blowback animations3
SWEP.Blowback_Shell_Effect = "ShellEject" -- Which shell effect to use
SWEP.BlowbackAllowAnimation = nil -- Allow playing shoot animation with blowback?

--[[EFFECTS]]--
--Attachments
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = false --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback


-- Enter iron sight info and bone mod info below
SWEP.InspectPos = Vector(0,0,0)
SWEP.InspectAng = Vector(0,0,0)


--[[SAFETY]]--
SWEP.SafetyPos = Vector(-0.401, -11.457, -4.01)
SWEP.SafetyAng = Vector(15.149, 6.639, -12.664)

SWEP.StatusLengthOverride = {
	["reload"] = 1.5,
	["reload_empty"] = 2.1,
	["foregrip_reload"] = 1.5,
	["foregrip_reload_empty"] = 2.1,
}

SWEP.SequenceRateOverride   = {

}

SWEP.SequenceLengthOverride = {                               -- Changes both the status delay and the nextprimaryfire of a given animation

}  


SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintBobMult = 0
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.Walk_Mode = TFA.Enum.IDLE_ani
SWEP.Customize_Mode = TFA.Enum.LOCOMOTION_HYBRID

SWEP.Offset = {
        Pos = {
        Up = -3,
        Right = 1,
        Forward = 4,
        },
        Ang = {
        Up = -3,
        Right = -9,
        Forward = 180,
        },
		Scale = 0.8
}

-- Selective Fire Stuff
SWEP.SelectiveFire = true -- Allow selecting your firemode?
SWEP.DisableBurstFire = false -- Only auto/single?
SWEP.OnlyBurstFire = false -- No auto, only burst/single?
SWEP.BurstFireCount = 2 -- Burst fire count override (autocalculated by the clip size if nil)
SWEP.DefaultFireMode = "auto" -- Default to auto or whatev
SWEP.FireModeName = nil -- Change to a text value to override it
SWEP.FireSoundAffectedByClipSize = true -- Whenever adjuct pitch (and proably other properties) of fire sound based on current clip / maxclip


--MDL Animations Below
SWEP.IronAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_PRIMARYATTACK_1, --Number for act, String/Number for sequence
		["value_last"] = ACT_VM_PRIMARYATTACK_2,
		["value_empty"] = "fireirondry"
	} --What do you think
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["value_empty"] = "empty_sprint",
		["is_idle"] = true
	}
}

SWEP.CustomizeAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "menuin", -- Number for act, String/Number for sequence
		["value_empty"] = "menuine",
		["transition"] = false
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "menu",
		["value_empty"] = "menu_Empty",
		["is_idle"] = true
	}
}

--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 75 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-0.92, 0, 1.4)
SWEP.IronSightsAng = Vector(0.2, 0, 1)

SWEP.IronSightsPos_Kobra = Vector(-0.92, 0, 1.5)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 1)
SWEP.Secondary.IronFOV_Kobra = 70

SWEP.IronSightsPos_EOTech = Vector(-0.91, 0, 1.5)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 1)
SWEP.Secondary.IronFOV_EOTech = 70

SWEP.IronSightsPos_RDS = Vector(-0.91, 0, 1.5)
SWEP.IronSightsAng_RDS = Vector(0, 0, 1)
SWEP.Secondary.IronFOV_RDS = 70

SWEP.IronSightsPos_2XRDS = Vector(-0.905, 0, 1.448)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 1)
SWEP.Secondary.IronFOV_2XRDS = 60

SWEP.IronSightsPos_C79 = Vector(-0.905, 0, 1.33)
SWEP.IronSightsAng_C79 = Vector(0, 0, 1)
SWEP.Secondary.IronFOV_C79 = 60

SWEP.IronSightsPos_MONOC = Vector(-0.92, 0, 2.08)
SWEP.IronSightsAng_MONOC = Vector(0, 0, 1)

SWEP.IronSightsPos_AIMOP = Vector(-0.915, 0, 2.14)
SWEP.IronSightsAng_AIMOP = Vector(0, 0, 1)

SWEP.IronSightsPos_MINI = Vector(-0.94, 0, 1.94)
SWEP.IronSightsAng_MINI = Vector(0, 0, 1)

SWEP.IronSightsPos_OPE = Vector(-0.92, 0, 2.1)
SWEP.IronSightsAng_OPE = Vector(0, 0, 1)

SWEP.IronSightsPos_LP = Vector(-0.92, 0, 1.95)
SWEP.IronSightsAng_LP = Vector(0, 0, 1)

SWEP.IronSightsPos_SOLO = Vector(-0.92, 0, 1.98)
SWEP.IronSightsAng_SOLO = Vector(0, 0, 1)

SWEP.IronSightsPos_VIP = Vector(-0.93, 0, 1.78)
SWEP.IronSightsAng_VIP = Vector(0, 0, 1)

SWEP.IronSightsPos_CORP = Vector(-0.91, 0, 1.69)
SWEP.IronSightsAng_CORP = Vector(0, 0, 1)

SWEP.IronSightsPos_PBX = Vector(-0.915, 0, 1.78)
SWEP.IronSightsAng_PBX = Vector(0, 0, 1)

SWEP.IronSightsPos_NVPoint = Vector(-4.2, 3, 0.5)
SWEP.IronSightsAng_NVPoint = Vector(-0.2, 0.5, -32)

SWEP.IronSightsPos_Thermal 			= Vector(-1, -55, 0.095)
SWEP.IronSightsAng_Thermal 			= Vector(0, 0, 0)
SWEP.Secondary.IronFOV_Thermal 		= 50


--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(2.4, -1.6, -0.8)
SWEP.RunSightsAng = Vector(-24, 32, -32)
--[[CROUCHING]]--
SWEP.CrouchPos    = Vector(1, -3.2, 1)
SWEP.CrouchAng    = Vector(0, 0, -12.5)
--[[HOLDTYPES]]--
SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.


--[[ATTACHMENTS]]--

SWEP.ViewModelBoneMods = {
	["A_Suppressor"] = { scale = Vector(0.85, 0.85, 0.85), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["A_Foregrip"] = { scale = Vector(0.3, 0.3, 0.3), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0.5, 0, -0.14), angle = Angle(0, 0, 0) },
}
	
	SWEP.WorldModelBoneMods = {
	["ATTACH_Muzzle"] = { scale = Vector(.65, .65, .65), pos = Vector(.75, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_Foregrip"] = { scale = Vector(.75, .75, .75), pos = Vector(-1, 0, .25), angle = Angle(0, 0, 0) },
}
	
SWEP.VElements = {
	["sights_folded"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_iron.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true, bonemerge = true },
	
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_sec2.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-0.5, -0.2, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },
	["suppressor_osprey"] = { type = "Model", model = "models/weapons/tfa_eft/upgrades/v_osprey.mdl", bone = "A_Suppressor", rel = "",  pos = Vector(-0.5, -0.2, 0), angle = Angle(90, -90, 0), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },
	
	["vectorsuppressor"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_suppressor.mdl", bone = "A_Suppressor", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	["long_barrel"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_longbarrel.mdl", bone = "", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	
	["vectorgrip"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_foregrip.mdl", bone = "A_Foregrip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = true, active = false },
	
	["rail_sights"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_irondown.mdl", bone = "A_Optic", rel = "", pos = Vector(0, -0.245, 0.159), angle = Angle(0, -90, 0), size = Vector(0.611, 0.611, 0.611), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false},
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan_m.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	
    ["laser"] = { type = "Model", model = "models/weapons/tfa_trepang2/upgrades/a_t2_VECTOR_laser.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(-0.29, 0, 0), angle = Angle(0, 0, 180), size = Vector(0.76, 0.76, 0.76), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_LaserFlashlight", rel = "laser", pos = Vector(0, 0.05, -0.49), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },

	["laser_anpeq15_black"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_anpeq15.mdl", bone = "A_LaserFlashlight", rel = "", pos = Vector(-1, -1.9, -0.55), angle = Angle(0, 0, 90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_beam_anpeq15_black"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "tag_laser_attach", rel = "laser_anpeq15_black", pos = Vector(0, -0.15, 0.5), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_anpeq15_tan"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_anpeq15_tan.mdl", bone = "A_LaserFlashlight", rel = "",pos = Vector(-1, -1.9, -0.55), angle = Angle(0, 0, 90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_beam_anpeq15_tan"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "tag_laser_attach", rel = "laser_anpeq15_tan", pos = Vector(0, -0.15, 0.5), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	
	["sight_thermal"] = { type = "Model", model = "models/weapons/attachments/thermal/c_iw4_thermal.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(-90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["sight_thermal_lens"] = { type = "Model", model = "models/weapons/attachments/thermal/c_iw4_thermal_lens.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(-90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },

	["sight_monocle"] =  { type = "Model", model = "models/weapons/mw/common/si_monocle.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_aimop"] =  { type = "Model", model = "models/weapons/mw/common/si_aimop.mdl", bone = "A_Optic", rel = "",pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_mini"] =  { type = "Model", model = "models/weapons/mw/common/si_mini.mdl", bone = "", rel = "mw_rail", pos = Vector(0, -0.3, 0.4), angle = Angle(0, 0, 0), size = Vector(0.98, 0.98, 0.98), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_operator"] =  { type = "Model", model = "models/weapons/mw/common/si_operator.mdl", bone = "A_Optic", rel = "",pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_lp945"] =  { type = "Model", model = "models/weapons/mw/common/si_lp945.mdl", bone = "", rel = "mw_rail",pos = Vector(0, -0.3, 0.4), angle = Angle(0, 0, 0), size = Vector(0.98, 0.98, 0.98), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_viper"] =  { type = "Model", model = "models/weapons/mw/common/si_viper.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_corp_combat"] =  { type = "Model", model = "models/weapons/mw/common/si_corp_combat.mdl", bone = "A_Optic", rel = "",pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_solozero"] =  { type = "Model", model = "models/weapons/mw/common/si_solozero.mdl", bone = "", rel = "mw_rail", pos = Vector(0, -0.3, 0.4), angle = Angle(0, 0, 0), size = Vector(0.98, 0.98, 0.98), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["sight_pbx7"] =  { type = "Model", model = "models/weapons/mw/common/si_pbx7.mdl", bone = "A_Optic", rel = "",pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["scope_apx"] =  { type = "Model", model = "models/weapons/mw/common/si_apx5.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["mw_rail"] = { type = "Model", model = "models/weapons/mw/common/si_mini_rail.mdl", bone = "A_Optic", rel = "",pos = Vector(0, 0, 0), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false,active = false, material = "", skin = 0, bodygroup = {} },

	["MW_supp_01"] = { type = "Model", model = "models/weapons/tfa_mw2022/upgrades/attachment_vm_silencer_east01.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-1, -0.1, -0.2), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },
	["MW_supp_02"] = { type = "Model", model = "models/weapons/tfa_mw2022/upgrades/attachment_vm_silencer02.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-1, -0.1, -0.2), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },
	["MW_supp_03"] = { type = "Model", model = "models/weapons/tfa_mw2022/upgrades/attachment_vm_silencer03.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-1, -0.1, -0.2), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },	
	["MW_supp_04"] = { type = "Model", model = "models/weapons/tfa_mw2022/upgrades/attachment_vm_silencer04.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-1, -0.1, -0.2), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} , bonemerge = false, active = false },	
}

SWEP.WElements = {
    ["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "t2_vectorsuppressor"}, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "t2_longbarrel"}, order = 2  },	
	[3] = { offset = { 0, 0 }, atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79"}, order = 3 },
	[4] = { offset = { 0, 0 }, atts = { "vectorgrip" }, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "ins2_ub_laser" }, order = 5 },
	[6] = { atts = weapon_skin_camoflauge, order = 6},
}

SWEP.AttachmentDependencies = {}--{["si_acog"] = {"bg_rail"}}
SWEP.AttachmentExclusions = {}--{ ["si_iron"] = {"bg_heatshield"} }

SWEP.MuzzleAttachmentSilenced = 2

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 4
SWEP.LaserDotISMovement = true

SWEP.AttachmentTableOverride = {
	["ins2_ub_laser"] = {
		["Bodygroups_W"] = {
		[1] = 0,
		}
	},

}

-- [[ BASH BASE PARAMETERS ]] --
-- If you're using "tfa_bash_base" or something that's derived from it
SWEP.Secondary.CanBash            = true -- set to false to disable bashing
SWEP.Secondary.BashDamage         = 50 -- Melee bash damage
SWEP.Secondary.BashSound          = "TFA.Bash" -- Soundscript name for bash swing sound
SWEP.Secondary.BashHitSound       = "TFA.BashWall" -- Soundscript name for non-flesh hit sound
SWEP.Secondary.BashHitSound_Flesh = "TFA.BashFlesh" -- Soundscript name for flesh hit sound
SWEP.Secondary.BashLength         = 54 -- Length of bash melee trace in units
SWEP.Secondary.BashDelay          = 0.2 -- Delay (in seconds) from bash start to bash attack trace
SWEP.Secondary.BashDamageType     = DMG_SLASH -- Damage type (DMG_ enum value)
SWEP.Secondary.BashEnd            = nil -- Bash end time (in seconds), defaults to animation end if undefined
SWEP.Secondary.BashInterrupt      = false -- Bash attack interrupts everything (reload, draw, whatever)

SWEP.StatCache_Blacklist = {
    ["IronSightsPos"] = true,
    ["IronSightsAng"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
    ["IronSightsPos_Kobra"] = true,
    ["IronSightsPos_Kobra"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
	["IronSightsPos_RDS"] = true,
    ["IronSightsPos_RDS"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
	["IronSightsPos_EOTech"] = true,
    ["IronSightsPos_EOTech"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
	["IronSightsPos_2XRDS"] = true,
    ["IronSightsAng_2XRDS"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
	["IronSightsPos_C79"] = true,
    ["IronSightsAng_C79"] = true,
    ["Secondary.IronFOV"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
    ["Secondary.IronFOV"] = true,
	["DrawCrosshairIS"] = true,
    ["SCOPING"] = true,
    ["CYCLEDELAY"] = true,
	["IronSightsPos_MONOC"] = true,
    ["IronSightsAng_MONOC"] = true,
    ["IronSightsPos_AIMOP"] = true,
    ["IronSightsAng_AIMOP"] = true,
    ["IronSightsPos_TA11D"] = true,
    ["IronSightsAng_TA11D"] = true,
    ["IronSightsPos_MINI"] = true,
    ["IronSightsAng_MINI"] = true,
    ["IronSightsPos_OPE"] = true,
    ["IronSightsAng_OPE"] = true,
    ["IronSightsPos_LP"] = true,
    ["IronSightsAng_LP"] = true,
    ["IronSightsPos_SOLO"] = true,
    ["IronSightsAng_SOLO"] = true,
    ["IronSightsPos_VIP"] = true,
    ["IronSightsAng_VIP"] = true,
    ["IronSightsPos_LP"] = true,
    ["IronSightsAng_LP"] = true,
    ["IronSightsPos_CORP"] = true,
    ["IronSightsAng_CORP"] = true,
    ["IronSightsPos_PBX"] = true,
    ["IronSightsAng_PBX"] = true,
}

DEFINE_BASECLASS( SWEP.Base )

SWEP.CurrentSightState = 1

SWEP.CurrentZoomState = 1
function SWEP:Think2(...)

	if self.Owner:KeyPressed(IN_WALK) and self:GetIronSights() then 
        if self.CurrentZoomState == 1 then
            self.CurrentZoomState = 2
			self:ClearStatCache()
			self.Secondary.ScopeZoom_MX4 = 2
			self.Secondary.IronFOV_Thermal 		= 30			
			self:PlayAnimation(self.AttInteractions.zoom_switch)
        else 
            self.CurrentZoomState = 1
			self:ClearStatCache()
			self.Secondary.ScopeZoom_MX4 = 8.7
			self.Secondary.IronFOV_Thermal 		= 50
			self:PlayAnimation(self.AttInteractions.zoom_switch)
		end 
    end 

    if self.Owner:KeyPressed(IN_USE) and self:GetIronSights() then 
		if (!self.editSightTrigger) then
			self.editSightTrigger = true
			timer.Simple(0.5, function()
				self.editSightTrigger = false
			end)
		else
        if self.CurrentSightState == 1 then 
            self.CurrentSightState = 2 
			self.IronSightsPos_Kobra = self.IronSightsPos_NVPoint
			self.IronSightsAng_Kobra = self.IronSightsAng_NVPoint	
			self.IronSightsPos_EOTech = self.IronSightsPos_NVPoint
			self.IronSightsAng_EOTech = self.IronSightsAng_NVPoint	
			self.IronSightsPos_RDS = self.IronSightsPos_NVPoint
			self.IronSightsAng_RDS = self.IronSightsAng_NVPoint	
			self.IronSightsPos_2XRDS = self.IronSightsPos_NVPoint
			self.IronSightsAng_2XRDS = self.IronSightsAng_NVPoint	
			self.IronSightsPos_C79 = self.IronSightsPos_NVPoint
			self.IronSightsAng_C79 = self.IronSightsAng_NVPoint	
			self.IronSightsPos = self.IronSightsPos_NVPoint
			self.IronSightsAng = self.IronSightsAng_NVPoint	
			self.IronSightsPos_MONOC = self.IronSightsPos_NVPoint
			self.IronSightsAng_MONOC = self.IronSightsAng_NVPoint	
			self.IronSightsPos_AIMOP = self.IronSightsPos_NVPoint
			self.IronSightsAng_AIMOP = self.IronSightsAng_NVPoint	
			self.IronSightsPos_MINI = self.IronSightsPos_NVPoint
			self.IronSightsAng_MINI = self.IronSightsAng_NVPoint	
			self.IronSightsPos_OPE = self.IronSightsPos_NVPoint
			self.IronSightsAng_OPE = self.IronSightsAng_NVPoint	
			self.IronSightsPos_LP = self.IronSightsPos_NVPoint
			self.IronSightsAng_LP = self.IronSightsAng_NVPoint	
			self.IronSightsPos_SOLO = self.IronSightsPos_NVPoint
			self.IronSightsAng_SOLO = self.IronSightsAng_NVPoint	
			self.IronSightsPos_VIP = self.IronSightsPos_NVPoint
			self.IronSightsAng_VIP = self.IronSightsAng_NVPoint	
			self.IronSightsPos_CORP = self.IronSightsPos_NVPoint
			self.IronSightsAng_CORP = self.IronSightsAng_NVPoint	
			self.IronSightsPos_PBX = self.IronSightsPos_NVPoint
			self.IronSightsAng_PBX = self.IronSightsAng_NVPoint	
			self.DrawCrosshairIS = true
		else
			self.CurrentSightState = 1
            self.IronSightsPos = Vector(-0.92, 0, 1.4)
            self.IronSightsAng = Vector(0.2, 0, 1)
            self.IronSightsPos_Kobra = Vector(-0.92, 0, 1.5)
            self.IronSightsAng_Kobra = Vector(0, 0, 1)
            self.IronSightsPos_EOTech = Vector(-0.91, 0, 1.5)
            self.IronSightsAng_EOTech = Vector(0, 0, 1)
            self.IronSightsPos_RDS = Vector(-0.91, 0, 1.5)
            self.IronSightsAng_RDS = Vector(0, 0, 1)
            self.IronSightsPos_2XRDS = Vector(-0.905, 0, 1.448)
            self.IronSightsAng_2XRDS = Vector(0, 0, 1)
            self.IronSightsPos_C79 = Vector(-0.905, 0, 1.33)
            self.IronSightsAng_C79 = Vector(0, 0, 1)
            self.IronSightsPos_MONOC = Vector(-0.92, 0, 2.08)
            self.IronSightsAng_MONOC = Vector(0, 0, 1)
            self.IronSightsPos_AIMOP = Vector(-0.915, 0, 2.14)
            self.IronSightsAng_AIMOP = Vector(0, 0, 1)
            self.IronSightsPos_MINI = Vector(-0.94, 0, 1.94)
            self.IronSightsAng_MINI = Vector(0, 0, 1)
            self.IronSightsPos_OPE = Vector(-0.92, 0, 2.1)
            self.IronSightsAng_OPE = Vector(0, 0, 1)
            self.IronSightsPos_LP = Vector(-0.92, 0, 1.95)
            self.IronSightsAng_LP = Vector(0, 0, 1)
            self.IronSightsPos_SOLO = Vector(-0.92, 0, 1.98)
            self.IronSightsAng_SOLO = Vector(0, 0, 1)
            self.IronSightsPos_VIP = Vector(-0.93, 0, 1.78)
            self.IronSightsAng_VIP = Vector(0, 0, 1)
            self.IronSightsPos_CORP = Vector(-0.91, 0, 1.69)
            self.IronSightsAng_CORP = Vector(0, 0, 1)
            self.IronSightsPos_PBX = Vector(-0.915, 0, 1.78)
            self.IronSightsAng_PBX = Vector(0, 0, 1)
			self.DrawCrosshairIS = false
		end 
    end 
end 
    return BaseClass.Think2(self, ...)
end

SWEP.AttInteractions = {
	["zoom_switch"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, 
		["value"] = "",
		["enabled"] = true 
	}
}

if CLIENT then
	function SWEP:OnCustomizationOpen()
		self:EmitSound("MW_UI.Attach")
	end

	function SWEP:OnCustomizationClose()
		self:EmitSound("MW_UI.Deattach")
	end
end