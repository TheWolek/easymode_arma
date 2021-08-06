_keyDik = _this select 1;
_shift =_this select 2;
_ctrl = _this select 3;
_alt = _this select 4;
_handled = false;
switch (_this select 1) do {

	case 35: {//H key
		if(_ctrl) then {
			hint "ctrl H";
			[] spawn TW_fnc_god;
			_handled = true;
		};

		if(_alt) then {
			hint "alt H";
			[] spawn TW_fnc_heal;
			_handled = true;
		};
	};

	case 48: {//B key
		if (_ctrl && vehicle player != player) then {
			hint "ctrl B";
			[] spawn TW_fnc_repair;
			_handled = true;
		};
	};

};

_handled;
