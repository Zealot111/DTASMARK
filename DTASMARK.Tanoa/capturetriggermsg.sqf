while {true} do
{
  waitUntil {sleep 0.2;[player] call fnc_isCapturing};
	if (roundInProgress) then
	{
		if (attackerSide == sidePlayer) then
		{
			hint localize "STR_CapMsg";
		}
		else
		{
			hint localize "STR_DefendMsg";
		};
	};
	waitUntil {sleep 0.2;!([player] call fnc_isCapturing)};
	if (roundInProgress) then
	{
		if (attackerSide == sidePlayer) then
		{
			hint localize "STR_StopCapMsg";
		}
		else
		{
			hint localize "STR_StopDefendMsg";
		};
	};
};