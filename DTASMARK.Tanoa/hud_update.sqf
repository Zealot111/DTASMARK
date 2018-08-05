private ["_missionText", "_ui", "_timeText", "_isCapturing", "_cap"];

_timeText = _this select 0;

_isCapturing = [player] call fnc_isCapturing;

disableSerialization;

_ui = uiNamespace getVariable "DTASHUD";

(_ui displayCtrl 9746) ctrlSetText _timeText;

if (isSpectating) then
{
	_missionText = name spectateUnit;
}
else
{
	_cap = round (capPercentage * 100);
	if (_cap > 100) then
	{
		_cap = 100;
	};
	if (_cap < 0) then
	{
		_cap = 0;
	};
	_missionText = format [localize "STR_Attacking", _cap, "%"];
	if (_isCapturing) then
	{
		_missionText = format [localize "STR_Capturing", _cap, "%"];
	};
	if (sidePlayer != attackerSide) then
	{
		if (ShowDefendingInfo	== 1) then
		{
 			if !(_isCapturing) then
      {
				_missionText = format [localize "STR_Defending", (100-_cap), "%"];
			}
			else
			{
				_missionText = format [localize "STR_Holding", (100-_cap), "%"];
			};
		}
		else
		{
 			if !(_isCapturing) then
      {
				_missionText = localize "STR_Defending0";
			}
			else
			{
				_missionText = localize "STR_Holding0";
			};
			
		};  
	};
	if (!roundInProgress) then
	{
		_missionText = localize "STR_Planning";
	};
	if (roundInProgress && (!isPlaying)) then
	{
		_missionText = localize "STR_Waiting";
	};
};
(_ui displayCtrl 9747) ctrlSetText _missionText;

(_ui displayCtrl 9748) ctrlSetText str scoreW;
(_ui displayCtrl 9749) ctrlSetText str scoreE;
//(_ui displayCtrl 9756) ctrlSetText format["score: %1", score player];
(_ui displayCtrl 9751) ctrlSetText str(playersNumber west);
(_ui displayCtrl 9752) ctrlSetText str(playersNumber east);
