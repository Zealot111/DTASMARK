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
_unit forceAddUniform "U_O_Wetsuit";
_unit addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
for "_i" from 1 to 5 do {_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
_unit addItemToUniform "rhs_mag_rgd5";
_unit addVest "V_RebreatherIR";
_unit addHeadgear "rhs_6b28_ess_bala";
_unit addGoggles "G_O_Diving";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m";
_unit addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
