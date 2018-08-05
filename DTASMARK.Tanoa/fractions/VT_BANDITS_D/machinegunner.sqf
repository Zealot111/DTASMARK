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
_unit forceAddUniform "U_I_C_Soldier_Para_1_F";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
_unit addVest "V_TacChestrig_cbr_F";
for "_i" from 1 to 2 do {_unit addItemToVest "10Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "200Rnd_556x45_Box_F";};
_unit addHeadgear "H_Bandanna_sand";

comment "Add weapons";
_unit addWeapon "LMG_03_F";
_unit addWeapon "hgun_Pistol_01_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
