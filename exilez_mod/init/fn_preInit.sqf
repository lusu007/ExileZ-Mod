/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

// Get EZM version
exileZmod_version = getText (configFile >> "CfgPatches" >> "exilez_mod" >> "exileZmod_version");

// Log stuff
diag_log format ["[EZM]:: ExileZ Mod %1 | Giving the server time to start before starting [EZM] (%2)", exileZmod_version, time];

// Log more stuff
diag_log format ["[EZM]:: ExileZ Mod %1 | Loading Configs at %2", exileZmod_version, time];

// Get the Zombie Configs/Loot/Vests/Classes
// Get the Zombie Classes List
call compileFinal preprocessFileLineNumbers "exilez_mod\zombies\zClassesList.sqf";
if (isNil "EZM_zClassesListCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\zombies\zClassesList.sqf, check for typos (time: %1)",time];
};

// Get the Zombie Loot
call compileFinal preprocessFileLineNumbers "exilez_mod\zombies\zLoot.sqf";
if (isNil "EZM_zLootCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\zombies\zLoot.sqf, check for typos (time: %1)",time];
};

// Get the Zombie Vests
call compileFinal preprocessFileLineNumbers "exilez_mod\zombies\zVest.sqf";
if (isNil "EZM_zVestCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\zombies\zVest.sqf, check for typos (time: %1)",time];
};

// Get the Zombie Classes
call compileFinal preprocessFileLineNumbers "exilez_mod\zombies\zClasses.sqf";
if (isNil "EZM_zClassesCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\zombies\zClasses.sqf, check for typos (time: %1)",time];
};

// Get the config for ExileZ Mod
call compileFinal preprocessFileLineNumbers "exilez_mod\config.sqf";
if (isNil "EZM_CompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\config.sqf, check for typos (time: %1)",time];
};

// Compile World Trigger Positions
switch (toLower worldName) do
{

	default
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\defaultTriggerPositions.sqf";

		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\defaultZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";

		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\defaultTriggerSettings.sqf";
	};

	case "altis":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\altisTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\altisZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\altisTriggerSettings.sqf";
	};

	case "tanoa":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\tanoaTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\tanoaZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\tanoaTriggerSettings.sqf";
	};

	case "namalsk":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\namalskTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\namalskZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\namalskTriggerSettings.sqf";
	};

	case "chernarus":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernarusZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerSettings.sqf";
	};

	case "chernarus_isles":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusIslesTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernarusZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerSettings.sqf";
	};

	case "chernarus_winter":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernarusZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerSettings.sqf";
	};

	case "chernarus_summer":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernarusZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernarusTriggerSettings.sqf";
	};

	case "napf":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\napfTriggerPositions.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\napfZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\napfTriggerSettings.sqf";
	};
	
	case "pja310": // Al Rayak
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\alRayakTriggerPosition.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\alRayakZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\alRayakTriggerSettings.sqf";
	};
	
	case "esseker":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\essekerTriggerPosition.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\essekerZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\essekerTriggerSettings.sqf";
	};
	
	case "bornholm":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\bornholmTriggerPosition.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\bornholmZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\bornholmTriggerSettings.sqf";
	};
	
	case "taviana":
	{
		// Trigger Positions
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\tavianaTriggerPosition.sqf";
		
		//Loot Crate and Mission Objects
		triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\tavianaZedMission.sqf";
		triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";
		
		// Trigger Settings
		call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\tavianaTriggerSettings.sqf";
	};
	
	case "xcam_taunus": // Taunus
	{
        // Trigger Positions
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\taunusTriggerPositions.sqf";

        //Loot Crate and Mission Objects
        triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\taunusZedMission.sqf";
        triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";

        // Trigger Settings
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\taunusTriggerSettings.sqf";
	};
	
	case "chernobylzone":
	{
        // Trigger Positions
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernobylZoneTriggerPosition.sqf";

        //Loot Crate and Mission Objects
        triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernobylZoneZedMission.sqf";
        triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";

        // Trigger Settings
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernobylZoneTriggerSettings.sqf";
	};
	
	case "chernobylzoneautumn":
	{
        // Trigger Positions
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernobylZoneTriggerPosition.sqf";

        //Loot Crate and Mission Objects
        triggerMission = compileFinal preprocessFileLineNumbers "exilez_mod\mission\chernobylZoneZedMission.sqf";
        triggerLootCrate = compileFinal preprocessFileLineNumbers "exilez_mod\mission\zMissionLootCrate.sqf";

        // Trigger Settings
        call compileFinal preprocessFileLineNumbers "exilez_mod\triggers\chernobylZoneTriggerSettings.sqf";
	};
};

// Check Triggers Compiled Correctly
if (isNil "EZM_TriggersCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\mission\(worldNameHere)TriggerPosition.sqf, check for typos (time: %1)", time];
};

// Check Trigger Settings Compiled Correctly
if (isNil "EZM_SettingsCompiledOkay") exitWith
{
	diag_log format ["[EZM]:: ExileZ Mod failed to read exilez_mod\mission\(worldNameHere)TriggerSettings.sqf, check for typos (time: %1)", time];
};

// Log more stuff
diag_log format ["[EZM]:: ExileZ Mod %1 | Loaded all Configs at %2", exileZmod_version, time];
