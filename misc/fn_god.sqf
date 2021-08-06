hint format["var GODMODE_ENABLED = %1", str(player getVariable["GODMODE_ENABLED",false])];

if (player getVariable["GODMODE_ENABLED",false]) then {
	player allowDamage true;
	player setVariable["GODMODE_ENABLED", false];
	hint "godmode disabled";
} else {
	player allowDamage false;
	player setVariable["GODMODE_ENABLED", true];
	hint "godmode enabled";
};