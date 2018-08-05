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
_unit forceAddUniform "rhs_uniform_gorka_r_y";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_rgd5";};
_unit addVest "LOP_V_6Sh92_OLV";
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_20rnd_9x39mm_SP5";};
_unit addItemToVest "rhs_mag_fakels";
_unit addHeadgear "H_Watchcap_khk";
_unit addGoggles "G_Bandanna_oli";

comment "Add weapons";
_unit addWeapon "rhs_weap_asval";
_unit addPrimaryWeaponItem "rhs_acc_pso1m21";
_unit addWeapon "rhs_pdu4";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
