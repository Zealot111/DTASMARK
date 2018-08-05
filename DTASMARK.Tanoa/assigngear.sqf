private ["_WithGPS","_cstr","_localclassname","_classscript", "_myclass", "_sidedir", "_sidetext", "_bGiveWeapons", "_aClassSide", "_currentClass",
 "_i", "_magCount", "_tempBackpackItems", "_backpack"];

player setDamage 0;
ace_hearing_deafnessDV = 0;
player setVariable ["ACE_hasEarPlugsin", false, true];
player setFatigue 0;


_bGiveWeapons = _this select 0;
_WithGPS = _this select 1;
	
	switch(defenderFaction) do {
	  case 1: {dFactionName = "RHSUSAOCP"};
	  case 2: {dFactionName = "RHSRUEMP"};
		case 4: {dFactionName = "VT_BANDITS_D"};
	};
	switch(attackerFaction) do {
	  case 1: {aFactionName = "RHSUSAOCP"};
	  case 2: {aFactionName = "RHSRUEMP"};
		case 4: {aFactionName = "VT_JANDARMES_A"};
	};


gearAssigned = false;

_aClassSide = nextAttackerSide;
if (_bGiveWeapons) then
{
	_aClassSide = attackerSide;
	if !(isNil "wmt_freezeGrenadeHandler") then {
    player removeEventHandler ["Fired",wmt_freezeGrenadeHandler];
    wmt_freezeGrenadeHandler = nil;
	};
}
else
{
 if (isNil "wmt_freezeGrenadeHandler") then {
   wmt_freezeGrenadeHandler = player addEventHandler ["Fired", {  deleteVehicle (_this select 6);}];
 };
};

if (_aClassSide == sidePlayer) then
{
	_sidetext="attack";
	_currentClass = currentAClass;
  _sidedir = aFactionName;	
}
else 
{
	_sidetext="defend";
  _currentClass = currentDClass;
  _sidedir = dFactionName;	
};

sleep 0.1;

_myclass=_currentClass select 0;
_cstr=localize format["C_"+_myclass];
_localclassname = format[_cstr+" : "+(_currentClass select 1)];

hint ((format [localize "STR_SelectedClass", _localclassname]));

_classscript = format["fractions" + "\" + _sidedir + "\" + _myclass + ".sqf"];

[player] call compile preprocessFileLineNumbers _classscript;


if (_WithGPS==1) then
{
	player linkItem "ItemGPS";		
}
else
{
	if (_WithGPS==0) then
	{
		player unlinkItem "ItemGPS";		
	};
};

if (_bGiveWeapons || !isTFR) then
{
	[] call fnc_addRadio;

};

gearAssigned = true;