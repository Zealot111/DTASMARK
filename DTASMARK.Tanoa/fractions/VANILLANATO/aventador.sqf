removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_B_CTRG_1";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addVest "V_PlateCarrierGL_rgr";
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
_unit addHeadgear "H_HelmetSpecB_snakeskin";
_unit addGoggles "G_Balaclava_blk";

comment "Add weapons";
_unit addWeapon "arifle_MX_GL_F";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Holosight_smg";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "tf_anprc148jem_16";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "WhiteHead_20";
_unit setSpeaker "ACE_NoVoice";
