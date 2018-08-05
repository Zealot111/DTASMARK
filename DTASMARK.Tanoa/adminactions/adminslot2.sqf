sleep 1;
_reservedslottext = localize "STR_RESERVEDSLOT";
_reservedslotadmintext = localize "STR_RESERVEDSLOTADMIN";

_admin = false;
if (serverCommandAvailable "#shutdown") exitWith {diag_log "tfdtas: administrator logged on with reserved slot.";};
_timer = 30;
for "_i" from 1 to 7 do {
	if (!_admin) then
	{
		hintC format[_reservedslottext,_timer];
		sleep 5;
		_timer = _timer -5;
		if (serverCommandAvailable "#shutdown") then {
			hintC format [_reservedslotadmintext, name player];
			_admin = true;
		};
	};
};
if (!_admin) then
{
//	if (!(isNil "KICKMEVAR")) then
//	{	
//		sleep 5;
//	};
	KICKMEVAR = player;
	publicVariableServer "KICKMEVAR";
	diag_log format["tfdtas: kickmevar = %1",KICKMEVAR];
	failMission "end1";
};