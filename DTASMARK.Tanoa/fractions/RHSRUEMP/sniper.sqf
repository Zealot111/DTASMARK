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
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_rgd5";};
_unit addVest "LOP_V_6Sh92_OLV";
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
_unit addHeadgear "H_Watchcap_khk";
_unit addGoggles "G_Bandanna_oli";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};

comment "Add weapons";
_unit addWeapon "rhs_weap_svdp_wd";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
_unit addWeapon "rhs_pdu4";
_unit addWeapon "rhs_weap_makarov_pmm";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";