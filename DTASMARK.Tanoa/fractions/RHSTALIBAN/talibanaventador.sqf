
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "LOP_U_AM_Fatigue_03";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
_unit addItemToUniform "rhs_mag_rdg2_white";
_unit addVest "LOP_V_6Sh92_Vog_WDL";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_VOG25";};
_unit addHeadgear "H_Watchcap_cbr";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_akm_gp25";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_8";
_unit linkItem "ItemGPS";

_unit setFace "WhiteHead_20";
_unit setSpeaker "ACE_NoVoice";
