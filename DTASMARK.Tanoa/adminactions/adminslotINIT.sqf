if (!isServer) then                         
{
	[] spawn {
		[_this select 0] call compile preProcessFileLineNumbers "adminactions\adminslot2.sqf";
	};	
};