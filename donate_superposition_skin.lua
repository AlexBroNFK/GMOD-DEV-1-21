if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Облик - Суперпозиция и Уникальные Эффекты Выстрела."

ATTACHMENT.Icon = "vgui/skins/icon_skin_donate_superposition_skin"
ATTACHMENT.ShortName = "Облик - Суперпозиция."

ATTACHMENT.WeaponTable = {
    MaterialTable_V = {
    [1] = "models/weapons/skin/donate_superposition_skin",
    [2] = "models/weapons/skin/donate_superposition_skin",
    [3] = "models/weapons/skin/donate_superposition_skin",
    [4] = "models/weapons/skin/donate_superposition_skin",
    [5] = "models/weapons/skin/donate_superposition_skin",
    [6] = "models/weapons/skin/donate_superposition_skin",
    [7] = "models/weapons/skin/donate_superposition_skin",
},
    MaterialTable_W = {
    [1] = "models/weapons/skin/donate_superposition_skin",
    [2] = "models/weapons/skin/donate_superposition_skin",
    [3] = "models/weapons/skin/donate_superposition_skin",
    [4] = "models/weapons/skin/donate_superposition_skin",
    [5] = "models/weapons/skin/donate_superposition_skin",
    [6] = "models/weapons/skin/donate_superposition_skin",
    [7] = "models/weapons/skin/donate_superposition_skin",
},
WElements = {
    ["ref"] = { ["material"] = "models/weapons/skin/donate_superposition_skin" },
    ["ref_l"] = { ["material"] = "models/weapons/skin/donate_superposition_skin" },
},
TracerName = "tfa_tracer_blue",                
TracerCount = 1,
MuzzleFlashEffect = "tfa_muzzleflash_blue",
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end