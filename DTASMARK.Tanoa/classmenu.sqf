private ["_veh", "_cond", "_localclassname","_cstr"];
waitUntil {!isNull player};

_veh = _this select 0;

_veh allowDammage false;

waituntil {!(isNil "aClasses")};
waitUntil {!(isNil "dClasses")};

{
// _cond = format ["(nextAttackerSide==sidePlayer) && canChangeClass && (%1)", _x select 12];
// оставил для последующих переделок (объединение aclasses - dclasses в одну, третий параметр "атака\защита\все"
	_cond = format ["(nextAttackerSide==sidePlayer) && canChangeClass && (%1)", true];
	_cstr=localize format["C_"+(_x select 0)];
// _localclassname = format[localize format["C_"+(_x select 0)] + ":" + (_x select 1)];
	_localclassname = format[_cstr + " : " + (_x select 1)];
	_veh addAction [_localclassname, "classaction.sqf", [_x, WEST], 4, false, true, "", _cond];
} forEach aClasses;

{
// _cond = format ["(nextAttackerSide!=sidePlayer) && canChangeClass && (%1)", _x select 12];
// оставил для последующих переделок (объединение aclasses - dclasses в одну, третий параметр "атака\защита\все"
	_cond = format ["(nextAttackerSide!=sidePlayer) && canChangeClass && (%1)", true];
	_cstr=localize format["C_"+(_x select 0)];
// _localclassname = format[localize format["C_"+(_x select 0)] + ":" + (_x select 1)];
	_localclassname = format[_cstr + " : " + (_x select 1)];
	_veh addAction [_localclassname, "classaction.sqf", [_x, EAST], 4, false, true, "", _cond];
} forEach dClasses;


_veh addAction ["--", ""];
_veh addAction [format["<t color='#CA2E2E'>%1</t> <t color='#ffe400'>%2</t>", "(beta)","reactivate HUD"], "execVM ""reactivate_hud.sqf"""];




