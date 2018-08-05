_unit = _this select 0;
if (not local _unit) exitwith {};

comment "Exported from Arsenal by [RMC] Chief";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_I_C_Soldier_Para_5_F";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
_unit addVest "V_HarnessOGL_brn";
for "_i" from 1 to 2 do {_unit addItemToVest "10Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_Smoke_Grenade_shell";};
_unit addHeadgear "H_Booniehat_khk_hs";
_unit addGoggles "G_Squares_Tinted";

comment "Add weapons";
_unit addWeapon "arifle_AK12_GL_F";
_unit addWeapon "hgun_Pistol_01_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
