if (isDedicated) exitWith {};
if !(hasInterface) exitWith {};

[] spawn {
	waitUntil {!isNull player && player == player};
	waitUntil {!isNil "BIS_fnc_init"};
	waitUntil {!(isNull (findDisplay 46))};

	player setVariable["GODMODE_ENABLED", false];

	//ace actions
	_actionMenu = ["Menu", "Menu", "", {true}, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf _unit), 1, ["ACE_SelfActions"], _actionMenu] call ace_interact_menu_fnc_addActionToClass;

	//god enable
	_conditionGod_en = {alive player && !(player getVariable["GODMODE_ENABLED",false])};
	_statementGod_en = {[] spawn TW_fnc_god;};
	_actionGod_en = ["GodOn", "God On", "", _statementGod_en, _conditionGod_en] call ace_interact_menu_fnc_createAction;
	[(typeOf _unit), 1, ["ACE_SelfActions", "Menu"], _actionGod_en] call ace_interact_menu_fnc_addActionToClass;

	//god disable
	_conditionGod_dis = {alive player && player getVariable["GODMODE_ENABLED",false]};
	_statementGod_dis = {[] spawn TW_fnc_god;};
	_actionGod_dis = ["GodOff", "God Off", "", _conditionGod_dis, _statementGod_dis] call ace_interact_menu_fnc_createAction;
	[(typeOf _unit), 1, ["ACE_SelfActions", "Menu"], _actionGod_dis] call ace_interact_menu_fnc_addActionToClass;

	//heal
	_conditionHeal = {alive player};
	_statementHeal = {[] spawn TW_fnc_heal;};
	_actionHeal = ["Heal", "Heal", "", _conditionHeal, _statementHeal] call ace_interact_menu_fnc_createAction;
	[(typeOf _unit), 1, ["ACE_SelfActions", "Menu"], _actionHeal] call ace_interact_menu_fnc_addActionToClass;

	//repair
	_conditionRepair = {alive player && vehicle player != player};
	_statementRepair = {vehicle player setDamage 0;};
	_actionRepair = ["Repair", "Repair", "", _conditionRepair, _statementRepair] call ace_interact_menu_fnc_createAction;
	[(typeOf _unit), 1, ["ACE_SelfActions", "Menu"], _actionRepair] call ace_interact_menu_fnc_addActionToClass;


	hint "loaded";
};
