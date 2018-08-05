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
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
_unit addVest "V_Chestrig_khk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
_unit addHeadgear "rhs_Booniehat_ocp";
_unit addGoggles "rhs_scarf";
_unit addItemToVest "rhsusf_mag_7x45acp_MHP";
_unit addItemToVest "rhsusf_mag_7x45acp_MHP";

comment "Add weapons";
_unit addWeapon "rhs_weap_sr25_ec";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
_unit addWeapon "rhsusf_weap_m1911a1";
_unit addWeapon "lerca_1200_black";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";
