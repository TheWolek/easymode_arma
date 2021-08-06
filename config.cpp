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
            class init {postInit = 1;};
            class keyHandler {};
        };

		class functions
		{
			class god {};
            class heal {};
		};
	};
};