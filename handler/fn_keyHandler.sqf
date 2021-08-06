_keyDik = _this select 1;
_shift =_this select 2;
_ctrl = _this select 3;
_alt = _this select 4;
_handled = false;
switch (_this select 1) do {

	case 35: {//H key
		if(_ctrl) then {
			[] spawn TW_fnc_god;
			_handled = true;
		};

		if(_alt) then {
			[] spawn TW_fnc_heal;
			_handled = true;
		};
	};

};

_handled;
