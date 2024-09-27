if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Рукоять"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "[+] -60% вертикальная отдача", "[+] -20% горизонтальная отдача", TFA.AttachmentColors["-"], "[-] -10% разброс", "[-] -5% разброс в прицеле", "[-] Больше вес" }
ATTACHMENT.Icon = "entities/vectorgrip.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["basegrip"] = {
			["active"] = false
		},
		["vectorgrip"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["basegrip"] = {
			["active"] = false
		},
		["vectorgrip"] = {
			["active"] = true
		}
	},
	["Animations"] = {
		["draw"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_draw"
		},
		["draw_first"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_ready"
		},
		["draw_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_draw_empty"
		},
		["shoot1"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_fire"
		},
		["shoot1_last"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_fire_last"
		},
		["shoot1_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_dryfire"
		},
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_reload"
		},
		["reload_empty"] = function(wep, val)
			val.type = TFA.Enum.ANIMATION_SEQ
			val.value = "foregrip_reload_empty"

			if wep:CheckVMSequence("foregrip_reloadempty") then
				val.value = "foregrip_reloadempty"
			end

			return val, true
		end,
		["reload_shotgun_start"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "foregrip_reload_start"
		},
		["reload_shotgun_finish"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "foregrip_reload_end"
		},
		["idle"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_idle"
		},
		["inspect"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_inspect"
		},
		["bash"] = {
		    ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		    ["value"] = "foregrip_bash"
	    },
		["bash_empty"] = {
		    ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		    ["value"] = "foregrip_bash_empty"
	    },
		["inspect_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_inspect_EMPTY"
		},
		["idle_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_empty_idle"
		},
		["holster"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_holster"
		},
		["holster_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_holster_empty"
		},
		["rof"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_fireselect"
		},
		["rof_is"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_iron_fireselect"
		}
	},
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.4 end,
		["KickDown"] = function(wep,stat) return stat * 0.4 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.8 end,
		["Spread"] = function(wep,stat) return stat * 1.1 end,
		["IronAccuracy"] = function(wep,stat) return stat * 1.05 end
	},
	["MoveSpeed"] = function(wep,stat) return stat * 0.975 end,
	["IronSightsMoveSpeed"] = function(wep,stat) return stat * 0.975 end,
	["HoldType"] = function(wep,stat)
		return "smg", true
	end,
	["IronAnimation"] = {
		["shoot"] = function(wep,val)
			if not wep.IronAnimation.shoot then return end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "foregrip_iron_fire"
			end
			if val.value_last then
				val["value_last"] = "foregrip_iron_firelast_b"
			end
			if val.value_empty then
				val["value_empty"] = "foregrip_iron_dryfire_b"
			end
			return val, true, false
		end
	},
	["PumpAction"] = function(wep,val)
		val = table.Copy(val) or {}
		val["type"] = TFA.Enum.ANIMATION_ACT --Sequence or act
		if val.value then
			val["value"] = ACT_VM_PULLBACK_LOW
		end
		if val.value_is then
			val["value_is"] = ACT_VM_PULLBACK_HIGH
		end
		return val, true, false
	end
}

function ATTACHMENT:Attach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

function ATTACHMENT:Detach( wep )
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end