if (isDedicated) exitWith {};
if !(hasInterface) exitWith {};
private ["_keyDown"];

[] spawn {
	waitUntil {!isNull player && player == player};
	waitUntil {!isNil "BIS_fnc_init"};
	waitUntil {!(isNull (findDisplay 46))};

	private ["_keyDown"];
	player setVariable["GODMODE_ENABLED", false];
	_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call TW_fnc_keyHandler"];
};
