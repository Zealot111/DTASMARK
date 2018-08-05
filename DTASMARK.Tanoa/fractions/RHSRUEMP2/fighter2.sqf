_unit = _this select 0;
if (not local _unit) exitwith {};

//_unit = this;

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
_unit addItemToUniform "FirstAidKit";
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
_unit addVest "rhs_6b23_digi_6sh92_headset";
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
_unit addHeadgear "rhs_6b28_ess_bala"; 

comment "Add weapons";
_unit addWeapon "rhs_weap_ak103";
_unit addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
