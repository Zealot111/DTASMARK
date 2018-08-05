private ["_nextUpdateTime"];

if (!isDedicated) then
{
	waitUntil {sleep 0.2;!(isNil "timeleftpvhandler")};
};

waitUntil {sleep 0.2;!isNil "roundStartTime"};

while {true} do
{
	_nextUpdateTime = time + 10;
	
	waitUntil {sleep 0.1;updateTime || time > _nextUpdateTime};
	
	updateTime = false;
	
	if (roundInProgress) then
	{
		timeLeft = roundEndTime - time;
	}
	else
	{
		timeLeft = roundStartTime - time;
	};
	publicVariable "timeLeft";
	if (!isDedicated) then
	{
		[timeLeft] call timeLeftPVHandler;
	};
};