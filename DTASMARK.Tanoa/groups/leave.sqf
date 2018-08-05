private ["_leaveHint", "_oldGroup", "_newGroup"];

if ((count (units (group player))) > 1) then
{
	_oldGroup = group player;
	//_newGroup = createGroup sidePlayer;
	//[player] joinSilent _newGroup;
	//[player] join _newGroup;
	[player] joinSilent grpNull;

	isGroupLeader = false;
	player setVariable ["groupKicked", false];
	
	waitUntil {sleep 0.2;(group player) != _oldGroup};
	
	if ((!(isNull _oldGroup)) && (count (units _oldGroup)) == 0) then
	{
		deleteGroup _oldGroup;
	};
};

sleep 1;
[] call fnc_reveal;
[] call fnc_groupRefresh;
