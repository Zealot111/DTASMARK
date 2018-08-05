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
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "rhs_mag_m67";
_unit addItemToUniform "rhs_mag_an_m8hc";
_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_unit addVest "rhsusf_iotv_ocp_Repair";
_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_unit addBackpack "RHS_M2_Gun_Bag";
_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";