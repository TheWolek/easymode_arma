hint format["var GODMODE_ENABLED = %1", str(player getVariable["GODMODE_ENABLED",false])];

if (player getVariable["GODMODE_ENABLED",false]) then {
	player allowDamage true;
	hint "godemode disabled";
} else {
	player allowDamage false;
	hint "godemode enabled";
};