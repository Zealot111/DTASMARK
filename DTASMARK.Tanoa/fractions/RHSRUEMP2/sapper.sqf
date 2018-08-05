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
_unit forceAddUniform "rhs_uniform_vdv_emr";
_unit addItemToUniform "FirstAidKit";
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_rgd5";};
_unit addItemToUniform "rhs_mag_rdg2_white";
_unit addVest "rhs_6b23_digi_engineer";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
_unit addBackpack "rhs_assault_umbts_engineer_empty";
_unit addItemToBackpack "MineDetector";
_unit addItemToBackpack "APERSTripMine_Wire_Mag";
_unit addHeadgear "rhs_6b28_ess_bala";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m";
_unit addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
