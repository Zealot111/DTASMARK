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
_unit forceAddUniform "U_I_G_Story_Protagonist_F";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
_unit addVest "V_Chestrig_rgr";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_65x39_cased_Box";};
_unit addHeadgear "H_ShemagOpen_khk";

comment "Add weapons";
_unit addWeapon "LMG_Mk200_F";
_unit addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
