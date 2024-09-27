if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Длинный Ствол"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { 
	TFA.AttachmentColors["+"], "[+] Меньше Отдача",
	TFA.AttachmentColors["-"], "[+] Больше вес",
}
ATTACHMENT.Icon = "entities/long_barrel_fennec.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "Barrel"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["long_barrel"] = {
			["active"] = true
		},
		["standard_barrel"] = {
			["active"] = false
		}
	},
		["Bodygroups_W"] = {
		[3] = 0,
		},
	["ViewModelBoneMods"] = {
		["A_Suppressor"] = { scale = Vector(1, 1, 1), pos = Vector(5, 0.11, 0), angle = Angle(0, 0, 0) 
		},
		["A_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(5, 0.11, 0), angle = Angle(0, 0, 0) 
		},
		["A_Muzzle_Supp"] = { scale = Vector(1, 1, 1), pos = Vector(7.9, 0.11, 0), angle = Angle(0, 0, 0) 
		}
	},
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat - 0.02 end,
		["KickDown"] = function(wep,stat) return stat - 0.02 end,
		["KickHorizontal"] = function(wep,stat) return stat - 0.02 end,
	},
	["IronSightTime"] = function(wep,stat) return stat * 1.3 end,
	["MoveSpeed"] = function( wep, stat ) return stat - 0.03 end,	
}


if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
