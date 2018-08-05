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
_unit forceAddUniform "rhs_uniform_vdv_emr";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
_unit addItemToUniform "rhs_mag_rgd5";
_unit addVest "rhs_6b23_digi_6sh92_headset";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
_unit addBackpack "rhs_rpg_empty";
_unit addHeadgear "rhs_6b28_ess_bala";
_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";  

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m";
_unit addPrimaryWeaponItem "rhs_acc_dtk";
_unit addWeapon "rhs_weap_rpg7";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
