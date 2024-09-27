local path = "KRISS VECTOR"
local pref = "tfa_KRISSVECTOR"
local hudcolor = Color(255, 80, 0, 191)

TFA.AddFireSound("vectorfire1", "weapons/trepang2_vectors_1.wav", true, ")" )
TFA.AddFireSound("vectorfire2", "weapons/vectorfire2.wav", false, ")" )

TFA.AddWeaponSound("vectorb", "weapons/vectorb.wav")
TFA.AddWeaponSound("vectors", "weapons/vectors.wav")
TFA.AddWeaponSound("vectorclipin", "weapons/vectorclipin.wav")
TFA.AddWeaponSound("vectorcliplocked", "weapons/vectorcliplocked.wav")
TFA.AddWeaponSound("vectorclipout", "weapons/vectorclipout.wav")
TFA.AddWeaponSound("vectordeploy", "weapons/vectordeploy.wav")
TFA.AddWeaponSound("vectorempty", "weapons/vectorempty.wav")
TFA.AddWeaponSound("vectorfullautobutton", "weapons/vectorfullautobutton.wav")
TFA.AddWeaponSound("vectorholster", "weapons/vectorholster.wav")
TFA.AddWeaponSound("vectorslideback", "weapons/vectorslideback.wav")
TFA.AddWeaponSound("vectorslideforward", "weapons/vectorslideforward.wav")
TFA.AddWeaponSound("vectorsf", "weapons/vectorsf.wav")
TFA.AddWeaponSound("vectorst1", "weapons/vectorst1.wav")
TFA.AddWeaponSound("vectorst2", "weapons/vectorst2.wav")


if killicon and killicon.Add then
	killicon.Add("tfa_KRISSVECTOR", "vgui/killicons/tfa_KRISSVECTORK", hudcolor)
end