/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 },
            { "optic_ACO_grn_smg", "", 2500, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_TRG20_F", "", 25000, 2500 },
            { "arifle_Katiba_F", "", 30000, 5000 },
            { "srifle_DMR_01_F", "", 50000, -1 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "optic_ACO_grn", "", 3500, 350 },
            { "optic_Holosight", "", 3600, 275 },
            { "optic_Hamr", "", 7500, -1 },
            { "acc_flashlight", "", 1000, 100 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 },
            { "optic_ACO_grn_smg", "", 950, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "ToolKit", "", 1250, 75 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },
            { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },
            { "hgun_P07_F", "", 7500, 1500 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ToolKit", "", 250, 75 },
            { "muzzle_snds_L", "", 650, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "Medikit", "", 1000, 450 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 }
        };
    };

    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        items[] = {
            { "arifle_MX_F", "", 35000, 7500 },
            { "SMG_02_ACO_F", "", 30000, -1 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "MineDetector", "", 1000, 500 },
            { "acc_flashlight", "", 750, 100 },
            { "optic_Holosight", "", 1200, 275 },
            { "optic_Arco", "", 2500, -1 },
            { "muzzle_snds_H", "", 2750, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 130 },
            { "30Rnd_9x21_Mag", "", 250 }
        };
    };

    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 17500, -1 },
            { "SMG_02_ACO_F", "", 15000, -1 },
            { "arifle_MXC_F", "", 30000, 5000 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "optic_Arco", "", 2500, -1 },
            { "muzzle_snds_H", "", 2750, -1 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 200 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "30Rnd_65x39_caseless_mag", "", 100, -1 }
        };
    };

    class cop_command {
        name = "Altis Command Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "You must be a Command Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 7500, -1 },//ACP-C2
            { "SMG_02_ACO_F", "", 10000, -1 },//Sting
			{ "srifle_GM6_F", "", 100000, -1 },//Lynx
			{ "launch_Titan_F", "", 100000, -1 },//Titan aa
			{ "arifle_MX_Black_F", "", 20000, -1 },//MX
			{ "arifle_MXC_Black_F", "", 15000, -1 },//MXC
            { "arifle_MXM_Black_F", "", 30000, -1 },//MXC
			{ "srifle_EBR_F", "", 35000, -1 },//MK18
			{ "srifle_LRR_F	", "", 100000, -1 },//M32O
			{ "arifle_MX_GL_Black_F", "", 25000, -1 },//MXGL
			{ "arifle_SPAR_01_blk_F", "", 20000, -1 },//SPAR16
			{ "arifle_ARX_blk_F", "", 50000, -1 },//TYPE115
			{ "MMG_02_black_F", "", 100000, -1 },//SPMG
			{ "srifle_DMR_05_blk_F", "", 75000, -1 },//CYRUS
			{ "srifle_DMR_04_F", "", 75000, -1 },//ASP
			{ "srifle_DMR_03_F", "", 50000, -1 },//MK1
			{ "srifle_DMR_02_F", "", 7500, -1 },//MAR10
			{ "LMG_03_F", "", 75000, -1 },//LIM
			{ "arifle_MX_SW_Black_F", "", 35000, -1 },//MXSW
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },//Flashbang
            { "muzzle_snds_H", "", 2750, -1 },//6.5 Suppressor 
			{ "muzzle_snds_M", "", 2750, -1 },//5.56 Suppressor 
			{ "muzzle_snds_L", "", 2750, -1 },//9mm Suppressor
			{ "muzzle_snds_B", "", 2750, -1 },//7.62 Suppressor 
			{ "muzzle_snds_338_black", "", 2750, -1 },//338 Suppressor 
			{ "muzzle_snds_acp", "", 2750, -1 },//45acp Suppressor
			{ "muzzle_snds_93mmg", "", 2750, -1 },//9.3 Suppressor
			{ "muzzle_snds_65_TI_blk_F", "", 2750, -1 },//6.5 Stealth Suppressor
			{ "optic_Arco_blk_F", "", 2500, -1 },//ARCO
			{ "optic_Aco", "", 500, -1 },//ACO
			{ "optic_Hamr", "", 2000, -1 },//RCO
			{ "optic_Holosight", "", 550, -1 },//Holosight
			{ "optic_MRCO", "", 1000, -1 },//MRCO
			{ "optic_LRPS", "", 10000, -1 },//LRPS
			{ "optic_AMS", "", 2500, -1 },//AMS
			{ "optic_KHS_blk", "", 2500, -1 },//Kahila
			{ "optic_DMS", "", 2500, -1 },//DMS
			{ "Binocular", "", 100, -1 },//Binocular
			{ "Rangefinder", "", 500, -1 },//Rangefinder
			{ "Laserdesignator", "", 1000, -1 },//Laserdesignator
			{ "bipod_01_F_blk", "", 1000, -1 },//Bipod
			{ "B_UavTerminal", "", 2500, -1 },//UavTerminal
			{ "NVGoggles_OPFOR", "", 500, -1 },//NVGoggles
			{ "ItemGPS", "", 250, -1 },//GPS
			{ "acc_flashlight", "", 250, -1 },//FLashlist
			{ "acc_pointer_IR", "", 250, -1 },//Laser
			{ "IEDUrbanBig_Remote_Mag", "", 5000, -1 }//IED
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 50 },
            { "30Rnd_9x21_Mag", "", 100 },
            { "30Rnd_65x39_caseless_mag", "", 500, -1 },
			{ "5Rnd_127x108_Mag", "", 1000 },
			{ "5Rnd_127x108_APDS_Mag", "", 1200 },
			{ "20Rnd_762x51_Mag", "", 750 },
			{ "7Rnd_408_Mag", "", 1000 },
			{ "3Rnd_SmokeGreen_Grenade_shell", "", 2000 },
			{ "30Rnd_556x45_Stanag", "", 200 },
			{ "30Rnd_65x39_caseless_green", "", 500 },
			{ "10Rnd_93x64_DMR_05_Mag", "", 750 },
			{ "10Rnd_127x54_Mag", "", 750 },
			{ "10Rnd_338_Mag", "", 750 },
			{ "200Rnd_556x45_Box_F", "", 800 },
			{ "100Rnd_65x39_caseless_mag", "", 550},
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 600 }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45 },
            { "Binocular", "", 150, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "Medikit", "", 500, 450 },
            { "NVGoggles", "", 1200, 980 }
        };
        mags[] = {};
    };
};
