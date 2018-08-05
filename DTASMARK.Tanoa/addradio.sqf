private ["_i", "_count", "_TFRChannel", "_radio", "_activeSWRadio"];

if (canHaveRadio) then
{
	_count = count (assignedItems player);
	
	if (isTFR && canHaveRadio) then
	{
		_radio = "tf_anprc152";
		//if (sidePlayer != attackerSide) then
		if (sidePlayer == east) then
		{
			_radio = "tf_fadak";
		};
		
		player linkItem _radio;
		
		// Wait for the new radio with ID to be added.
		waitUntil {sleep 0.2;[] call TFAR_fnc_haveSWRadio};
		
		// Wait for server to assign squad channel if it isn't assigned.
		_TFRChannel = -1;
		waitUntil
		{
			sleep 0.2;
			_TFRChannel = (group player) getVariable ["TFRChannel", -1];
			_TFRChannel != -1
		};
		
		_activeSWRadio = [] call TFAR_fnc_activeSwRadio;
		// Set the short range channel to the squad channel.
		[_activeSWRadio, _TFRChannel - 1] call TFAR_fnc_setSwChannel;
		
		// Set the additional channel to command channel (8).
		if (commandChannelEnabled) then
		{
			[_activeSWRadio, 7] call TFAR_fnc_setAdditionalSwChannel;
		};
	}
	else
	{
		player linkItem "ItemRadio";
	};
};