
comment "Exported from Arsenal by [RMC] Chief";

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
_unit forceAddUniform "U_BG_Guerrilla_6_1";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
_unit addVest "V_Chestrig_khk";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
_unit addBackpack "B_TacticalPack_rgr";
_unit addItemToBackpack "Medikit";
_unit addHeadgear "H_Watchcap_camo";

comment "Add weapons";
_unit addWeapon "arifle_TRG20_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
