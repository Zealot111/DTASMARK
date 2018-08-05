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
_unit forceAddUniform "rhs_uniform_emr_patchless";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_morphine";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
_unit addVest "rhs_6b23_digi_6sh92_vog_headset";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_VOG25";};
_unit addHeadgear "rhs_6b28_ess_bala";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_gp25";
_unit addPrimaryWeaponItem "rhs_acc_dtk";
_unit addWeapon "rhs_pdu4";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";
