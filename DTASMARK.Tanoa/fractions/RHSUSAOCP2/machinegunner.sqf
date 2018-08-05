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
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
_unit addVest "rhsusf_iotv_ocp_SAW";
_unit addItemToVest "rhs_200rnd_556x45_M_SAW";
_unit addItemToVest "rhs_200rnd_556x45_M_SAW";
_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";

comment "Add weapons";
_unit addWeapon "rhs_weap_m249_pip_S";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
