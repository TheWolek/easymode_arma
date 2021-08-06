private ["_state"];

if (player getVariable["GODMODE_ENABLED",false]) then {
	player allowDamage true;
	player setVariable["GODMODE_ENABLED", false];
	_state = "Off";
} else {
	player allowDamage false;
	player setVariable["GODMODE_ENABLED", true];
	_state = "On";
};

hint format["Godmode %1", _state];
