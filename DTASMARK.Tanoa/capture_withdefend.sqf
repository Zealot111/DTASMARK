private ["_ccount","_dcount","_i", "_count", "_r", "_nextTick", "_fnc_extraAttackersInZone"];

_fnc_extraAttackersInZone =
{
	private ["_count", "_units", "_defenderSide"];
	_count = 0;
	_dcount = 0;
	_ccount=[];
	_units = list trgObj;
	_defenderSide = EAST;
	if (attackerSide == EAST) then
	{
		_defenderSide = WEST;
	};
	{
		if ([_x] call fnc_isCapturing) then
		{
			if (side _x == attackerSide) then
			{
				_count = _count + 1;
			};
			if (side _x == _defenderSide) then
			{
				_dcount = _dcount + 1;
			};
		};
	} forEach _units;
	[_count,_dcount]
};

waitUntil {!isNil "roundInProgress"};

_r = ln (1 - minCapTime/maxCapTime);

_nextTick = time;

// 1.13tf7 Зачем это считать всем? Пусть считает только сервер, а с остальными делится. В версию 1.13tf9
while {true} do
{
	waitUntil {sleep 0.5;!roundInProgress};
	waitUntil {sleep 0.5;roundInProgress};
	
	_nextTick = time;
	_i = 0;
	capPercentage = 0;
	
	while {roundInProgress && capPercentage < 1} do
	{
		waitUntil {time > _nextTick};
		_nextTick  = _nextTick + 0.5;
		_ccount = ([] call _fnc_extraAttackersInZone);
//		hint str (_ccount);
		_count = _ccount select 0;
		_dcount = _ccount select 1;
		
//		hint str(_count);
		if ((_count!= 0) && (_count-_dcount >= 0)) then
		{
			if (_dcount == 0) then
  		{capPercentage = capPercentage + ((1 - exp (_r*_count))/minCapTime)/2;}
  		else
  		{
 				capPercentage = capPercentage + ((1 - exp (_r*(_count+0.5-_dcount)))/minCapTime)/2;
  		};
  		  
			if (isServer) then
			{
				// Synchronize capture timer every 5 seconds.
				if (_i == 10) then
				{
					_i = 0;
					publicVariable "capPercentage";
				};
				_i = _i + 1;
			};
		};
		if ((_dcount > _count) && (capPercentage > 0)) then
		{
  		capPercentage = capPercentage + ((1 - exp (_r*(_count-_dcount)))/minCapTime)/2;
			if (capPercentage < 0) then {capPercentage = 0;};
			if (isServer) then
			{
				// Synchronize capture timer every 5 seconds.
				if (_i == 10) then
				{
					_i = 0;
					publicVariable "capPercentage";
				};
				_i = _i + 1;
			};
		};
	};
	if (capPercentage >= 1 && roundInProgress) then
	{
		if (attackerSide == WEST) then
		{
			bObjW=true;
		}
		else
		{
			bObjE=true;
		};
	};
};