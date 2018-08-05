private ["_mhq", "_openers", "_closers", "_openersCount", "_skipChars", "_sideColor", "_groupColor", "_cmdColor", "_playerColor", "_infMarkers", "_textMarkers", "_currentMarker", "_insertionMarkers", "_currentUnit", "_i", "_group", "_currentInsertionMarker", "_leader", "_pos", "_dir", "_inTransportCargo", "_nameStartIndex", "_i", "_j"];

if (isDedicated) exitWith {};
waitUntil {!(isNull player)};
waitUntil {!(isNil "attackerSide")};
waitUntil {!(isNil "nextAttackerSide")};

_openers = toArray "[({<";
_closers = toArray "])}>";
_openersCount = count _openers;
_skipChars = toArray "`~!@#$%^&*()-_=+;:,./?()[]{} 1234567890";

// Minimum damage to show as faded
_injuredDamage = 0.1;

// Define color for each role
_sideColor="ColorBlue";
_groupColor="ColorGreen";
_cmdColor="ColorOrange";
_playerColor="ColorRed";

// Create enough markers for max possible player count
_infMarkers = [];
_textMarkers = [];
_insertionMarkers = [];
for "_i" from 0 to 60 do
{
	_currentMarker = createMarkerLocal [format ["mrki%1", _i], [1, 1]];
	_currentMarker setMarkerShapeLocal "ICON";
	_currentMarker setMarkerTypeLocal "mil_triangle";
	_currentMarker setMarkerSizeLocal [0.5,1];
	_infMarkers set [_i, _currentMarker];
	
	_currentMarker = createMarkerLocal [format ["mrki%1text", _i], [1, 1]];
	_currentMarker setMarkerShapeLocal "ICON";
	_currentMarker setMarkerTypeLocal "mil_triangle";
	_currentMarker setMarkerSizeLocal [0.6,0];
	_textMarkers set [_i, _currentMarker];
	
	_currentMarker = createMarkerLocal [format ["mrkInsertion%1", _i], [1, 1]];
	_currentMarker setMarkerShapeLocal "ICON";
	_currentMarker setMarkerTypeLocal "mil_start";
	_currentMarker setMarkerColorLocal "COLORGREEN";
	_currentMarker setMarkerSizeLocal [1.1,1.1];
	_insertionMarkers set [_i, _currentMarker];
};

while {true} do
{
	_i = 0;
	
	while {_i<61} do
	{
		_currentMarker = _infMarkers select _i;
		_currentMarker setMarkerAlphaLocal 0;
		_currentTextMarker = _textMarkers select _i;
		_currentTextMarker setMarkerAlphaLocal 0;
		_i = _i + 1;
	};
	
	_i = 0;
	{
		_group = _x;
		_leader = leader _group;
		if
		(
			(!(isNull _group))
			&&
			(!(isNull _leader))
			&&
			((side _group) == sidePlayer)
			&&
			(
				(((side _group) == attackerSide)  && roundInProgress)
				||
				(((side _group) == nextAttackerSide) && (!roundInProgress))
			)
			&&
			(_group getVariable ["insertionPosPicked", false])
		) then
		{
			_currentMarker = _insertionMarkers select _i;
			_pos = _group getVariable "insertionPos";
			
			_dx = (objPos select 0) - (_pos select 0);
			_dy = (objPos select 1) - (_pos select 1);
			_dir = atan (_dy/_dx);
			if (_dx<0) then
			{
				_dir = _dir + 180;
			};
			if (_dx==0) then
			{
				if (_dy>0) then
				{
					_dir = 90;
				}
				else
				{
					_dir = -90;
				};
			};
			_dir = 90 - _dir;

			_currentMarker setMarkerDirLocal _dir;
			_currentMarker setMarkerPosLocal _pos;
			_currentMarker setMarkerTextLocal format ["%1 (%2)", name _leader, localize format ["STR_InsertionVehicle%1s", _group getVariable "insertionType"]];
			_currentMarker setMarkerAlphaLocal 1;			

			_i = _i + 1;
		};
	} forEach allGroups;
	
	while {_i<61} do
	{
		_currentMarker = _insertionMarkers select _i;
		_currentMarker setMarkerAlphaLocal 0;
		_i = _i + 1;
	};
	
	sleep 1;
};