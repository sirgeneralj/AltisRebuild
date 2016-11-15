#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
switch(playerSide) do {
	case civilian: {
		if(EQUAL(LIFE_SETTINGS(getNumber,"civ_skins"),1)) then {
			if(uniform player == "U_C_Poloshirt_blue") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_burgundy") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_stripped") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_tricolour") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_salmon") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_redwhite") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"];
			};
			if(uniform player == "U_C_Commoner1_1") then {
				player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"];
			};
		};
	};
	case west: {
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_coplevel) = 0 then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_uniform"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_coplevel) = 1 then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_uniform_1"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_coplevel) = 2 then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_uniform_5"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_coplevel) = 3 then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_uniform_6"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_coplevel) = 4 then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_uniform_8"];
		};
		if(uniform player == "U_NikosBody") then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\cop_court"];
		};
		if(uniform player == "U_B_CombatUniform_mcam_worn") then {
			player setObjectTextureGlobal [0, "textures\POLICE\REGULAR\whitelist"];
		};
		if(uniform player == "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\POLICE\SRT\blue"];
		};
		if(uniform player == "U_B_CombatUniform_mcam_vest") then {
			player setObjectTextureGlobal [0, "textures\POLICE\SRT\black"];
		};
	};
	case independent: {
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_medlevel) = 0 then {
			player setObjectTextureGlobal [0, "textures\MEDIC\EMS\lvl1_medic"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_medlevel) = 1 then {
			player setObjectTextureGlobal [0, "textures\MEDIC\EMS\lvl1_medic"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_medlevel) = 2 then {
			player setObjectTextureGlobal [0, "textures\MEDIC\EMS\lvl4_medic"];
		};
		if(uniform player == "U_Rangemaster") && (FETCH_CONST(life_medlevel) = 3 then {
			player setObjectTextureGlobal [0, "textures\MEDIC\EMS\doctor_uniform"];
		};
	};
};
