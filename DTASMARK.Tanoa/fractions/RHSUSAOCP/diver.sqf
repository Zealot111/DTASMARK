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
_unit forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
_unit addVest "V_RebreatherB";
_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
_unit addGoggles "G_B_Diving";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_blockII_grip2";
_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Holosight";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";
