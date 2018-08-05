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
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
_unit addVest "V_TacVest_camo";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
_unit addHeadgear "H_Watchcap_camo";
_unit addGoggles "G_Balaclava_blk";

comment "Add weapons";
_unit addWeapon "arifle_TRG21_GL_F";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Holosight";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_11";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "WhiteHead_20";
_unit setSpeaker "ACE_NoVoice";
