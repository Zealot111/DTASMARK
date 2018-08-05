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
_unit forceAddUniform "U_B_GEN_Soldier_F";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
_unit addVest "V_TacVest_gen_F";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "150Rnd_556x45_Drum_Mag_F";};
_unit addHeadgear "H_MilCap_gen_F";

comment "Add weapons";
_unit addWeapon "arifle_SPAR_02_blk_F";
_unit addPrimaryWeaponItem "optic_Aco";
_unit addWeapon "hgun_P07_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
