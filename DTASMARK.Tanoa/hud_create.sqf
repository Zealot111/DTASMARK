private ["_ui", "_timer", "_mission", "_scoreW", "_scoreE", "_text", "_balance", "_balanceW", "_balanceE", "_bg", "_bg2", "_bb" ];

disableSerialization;
cutRsc ["DTASHUD","PLAIN"];
_ui = uiNamespace getVariable "DTASHUD";

_timer = _ui displayCtrl 9746;
_mission = _ui displayCtrl 9747;
_scoreW = _ui displayCtrl 9748;
_scoreE = _ui displayCtrl 9749;
_balance = _ui displayCtrl 9750;
_text = localize "STR_BALANCE";
(_ui displayCtrl 9750) ctrlSetText _text;
_balanceW = _ui displayCtrl 9751;
_balanceE = _ui displayCtrl 9752;
_bg = _ui displayCtrl 9753;
_bb = _ui displayCtrl 9754;
_bg2 = _ui displayCtrl 9755;
{_x ctrlShow true} foreach [_timer, _mission, _scoreW, _scoreE, _balance, _balanceW, _balanceE, _bg, _bb, _bg2];

_mission ctrlSetBackgroundColor [if (sidePlayer == WEST) then {0} else {1}, 0, if (sidePlayer == WEST) then {1} else {0}, 0.3];