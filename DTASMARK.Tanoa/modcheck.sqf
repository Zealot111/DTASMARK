// mod synchronization check to prevent bugs caused by missing critical mods that run on the server
private ["_missingAttackerModMessage", "_missingDefenderModMessage", "_attackerModsAvailable", "_defenderModsAvailable", "_defaultAttackerMod", "_defaultDefenderMod", "_attackerMissingModsMessages", "_defenderMissingModsMessages"];
missingModsMessage = "";
missingTFRMessage = "";


if (isServer) then
{
	attackerFaction = AttackerFactionParam;
	publicVariable "attackerFaction";
	
	defenderFaction = DefenderFactionParam;
	publicVariable "defenderFaction";
	
	// Check for TFR server/host availability.
	canHaveRadio = true;
	if (isClass(configFile >> "CfgPatches" >> "task_force_radio")) then
	{
		isTFR = true;
	}
	else
	{
		isTFR = false;
	};
	publicVariable "isTFR";
}
else
{
	waitUntil {!isNil "defenderFaction"};
 
	// Check for TFR client availability.
	// No forcing of TFR.
	// Player will just get errors and have no radio if he doesn't run the mod, but can otherwise play.
	waitUntil {!isNil "isTFR"};
	canHaveRadio = true;
	if (isTFR && !isClass(configFile >> "CfgPatches" >> "task_force_radio")) then
	{
		canHaveRadio = false;
		// If there is already a missing mods message, add TFR to it.
		// Otherwise, have a separate message for TFR since missingModsMessage also means player can't play.
		missingTFRMessage = localize "STR_MissingTFRMod";
	};
};
modCheckDone = true;