if (!isDedicated) then
{
	winnerSidePVHandler =
	{
		if (dialog) then
		{
			closeDialog 0;
		};
		if (sidePlayer == winnerSide) then
		{
			["END1", sidePlayer == winnerSide, 1] spawn BIS_fnc_endMission;
		}
		else
		{
//			if (WinnerSide == resistance) then
//				{["END3", sidePlayer == winnerSide, 1] spawn BIS_fnc_endMission;};
//			else {
				["END2", sidePlayer == winnerSide, 1] spawn BIS_fnc_endMission;
//};
		};
	};
	"winnerSide" addPublicVariableEventHandler winnerSidePVHandler;
	if (!(isNil "winnerSide")) then
	{
		[] call winnerSidePVHandler;
	};
};

if (isServer) then
{
	waitUntil {!(isNil "scoreW")};
	waitUntil {!(isNil "scoreE")};
	
	if (maxScore != 0) then {waitUntil {sleep 0.5;((scoreW >= maxScore) && (scoreW > (scoreE + 1))) || ((scoreE >= maxScore) && (scoreE > (scoreW + 1)))};}
	else {waitUntil {sleep 0.5;(scoreW+scoreE)>= 6};};
	if (scoreW > scoreE) then
	{
		winnerSide = West;
	}
	else
	{
		if (scoreE > scoreW) then 
			{winnerSide = East;}
		else 
			{winnerSide = resistance;};
	};
	publicVariable "winnerSide";
	if (dialog) then
	{
		closeDialog 0;
	};
	sleep 5;
	if (!isDedicated) then
	{
		[] call winnerSidePVHandler;
	}
	else
	{
		endMission "END1";
	};
};