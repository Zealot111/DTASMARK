_unit = _this select 0;
if (not local _unit) exitwith {};

//_unit = _unit;
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
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_m67";};
_unit addItemToUniform "rhs_mag_an_m8hc";
_unit addItemToUniform "rhs_mag_an_m8hc";
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_carryhandle";
_unit addItemToBackpack "rhs_mag_smaw_HEAA";
_unit addItemToBackpack "rhs_mag_smaw_HEAA";
_unit addItemToBackpack "rhs_mag_smaw_SR";
_unit addWeapon "rhs_weap_smaw";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
