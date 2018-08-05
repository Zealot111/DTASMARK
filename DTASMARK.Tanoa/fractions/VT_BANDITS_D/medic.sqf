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
_unit forceAddUniform "U_I_C_Soldier_Bandit_3_F";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
_unit addItemToUniform "HandGrenade";
_unit addVest "V_TacChestrig_oli_F";
for "_i" from 1 to 2 do {_unit addItemToVest "10Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
_unit addBackpack "B_FieldPack_cbr";
_unit addItemToBackpack "Medikit";
_unit addHeadgear "H_Booniehat_khk_hs";
_unit addGoggles "G_Squares_Tinted";

comment "Add weapons";
_unit addWeapon "SMG_01_F";
_unit addPrimaryWeaponItem "optic_ACO_grn";
_unit addWeapon "hgun_Pistol_01_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
