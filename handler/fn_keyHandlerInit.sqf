[] spawn {
	GODMODE_ENABLED = false;
	findDisplay 46 displayAddEventHandler ["KeyDown", "_this call TW_fnc_keyHandler"];
};