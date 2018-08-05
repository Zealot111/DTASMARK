_unit = _this select 0;
if (not local _unit) exitwith {};

comment "Exported from Arsenal by [TF]def";

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
_unit addItemToUniform "rhs_mag_m67";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
_unit addVest "rhsusf_iotv_ocp_Grenadier";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addBackpack "B_Carryall_cbr";
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";
_unit addItemToBackpack "rhs_mag_smaw_HEDP";
_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
_unit addWeapon "lerca_1200_black";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
