_unit = _this select 0;
if (not local _unit) exitwith {};
comment "Exported from Arsenal by [TF]Shatun63";

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
_unit forceAddUniform "LOP_U_AFR_Fatigue_01";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addVest "LOP_V_Chestrig_Kamysh";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
_unit addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_black";};
_unit addBackpack "RHS_DShkM_TripodHigh_Bag";
_unit addHeadgear "LOP_H_ChDKZ_Beret";
_unit addGoggles "G_Bandanna_blk";

comment "Add weapons";
_unit addWeapon "rhs_weap_akms";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit addWeapon "Binocular";