class CfgPatches
{
    class easyMode {
        name = "easyMode";
        author = "TheWolek";
        requiredVersion = 1.60;
        requiredAddons[] = { "A3_Functions_F" };
        units[] = {};
        weapons[] = {};
    };
};

class CfgFunctions
{
	class TW
	{
        class handler
		{
			class keyHandlerInit {
                file = "\easyMode\init.sqf";
                postInit = 1;
            };
            class keyHandler {
                file = "\easyMode\keyHandler.sqf";
            };
		};

        class misc
        {
            file = "\easyMode\misc";
            class god {};
            class heal {};
        };
	};
};