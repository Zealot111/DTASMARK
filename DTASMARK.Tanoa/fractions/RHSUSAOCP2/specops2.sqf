_unit = _this select 0;
if (not local _unit) exitwith {};

comment "Exported from Arsenal by [TF]Aventador20_RUS";

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
_unit forceAddUniform "rhs_uniform_cu_ocp";
_unit addItemToUniform "FirstAidKit";
for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
_unit addItemToUniform "rhs_mag_mk84";
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addHeadgear "rhs_Booniehat_ocp";
_unit addGoggles "G_Bandanna_khk";

comment "Add weapons";
_unit addWeapon "rhs_weap_m27iar";
_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Holosight";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
