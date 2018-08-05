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
_unit forceAddUniform "U_I_CombatUniform_shortsleeve";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addVest "V_PlateCarrierIAGL_dgtl";
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
_unit addHeadgear "H_HelmetIA";
_unit addGoggles "G_Balaclava_blk";

comment "Add weapons";
_unit addWeapon "arifle_Mk20_F";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "tf_anprc148jem_18";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "WhiteHead_20";
_unit setSpeaker "ACE_NoVoice";
