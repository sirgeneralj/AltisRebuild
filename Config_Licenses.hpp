/*
*    class:
*        variable = Variable Name
*        displayName = License Name
*        price = License Price
*        illegal = Illegal License
*        side = side indicator
*/
class Licenses {
    //Civilian Licenses
    class driver {
        variable = "driver";
        displayName = "STR_License_Driver";
        price = 500;
        illegal = false;
        side = "civ";
    };

    class boat {
        variable = "boat";
        displayName = "STR_License_Boat";
        price = 1000;
        illegal = false;
        side = "civ";
    };

    class pilot {
        variable = "pilot";
        displayName = "STR_License_Pilot";
        price = 25000;
        illegal = false;
        side = "civ";
    };

    class trucking {
        variable = "trucking";
        displayName = "STR_License_Truck";
        price = 20000;
        illegal = false;
        side = "civ";
    };

    class gun {
        variable = "gun";
        displayName = "STR_License_Firearm";
        price = 10000;
        illegal = false;
        side = "civ";
    };

    class dive {
        variable = "dive";
        displayName = "STR_License_Diving";
        price = 2000;
        illegal = false;
        side = "civ";
    };

    class home {
        variable = "home";
        displayName = "STR_License_Home";
        price = 75000;
        illegal = false;
        side = "civ";
    };

    //Processing Licenses
    class oil {
        variable = "oil";
        displayName = "STR_License_Oil";
        price = 10000;
        illegal = false;
        side = "civ";
    };

    class diamond {
        variable = "diamond";
        displayName = "STR_License_Diamond";
        price = 35000;
        illegal = false;
        side = "civ";
    };

    class salt {
        variable = "salt";
        displayName = "STR_License_Salt";
        price = 12000;
        illegal = false;
        side = "civ";
    };

    class sand {
        variable = "sand";
        displayName = "STR_License_Sand";
        price = 14500;
        illegal = false;
        side = "civ";
    };

    class iron {
        variable = "iron";
        displayName = "STR_License_Iron";
        price = 9500;
        illegal = false;
        side = "civ";
    };

    class copper {
        variable = "copper";
        displayName = "STR_License_Copper";
        price = 8000;
        illegal = false;
        side = "civ";
    };

    class cement {
        variable = "cement";
        displayName = "STR_License_Cement";
        price = 6500;
        illegal = false;
        side = "civ";
    };

    class medmarijuana {
        variable = "medmarijuana";
        displayName = "STR_License_Medmarijuana";
        price = 15000;
        illegal = false;
        side = "civ";
    };

    //Illegal Licenses
    class cocaine {
        variable = "cocaine";
        displayName = "STR_License_Cocaine";
        price = 30000;
        illegal = true;
        side = "civ";
    };

    class heroin {
        variable = "heroin";
        displayName = "STR_License_Heroin";
        price = 25000;
        illegal = true;
        side = "civ";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_License_Marijuana";
        price = 19500;
        illegal = true;
        side = "civ";
    };

    class rebel {
        variable = "rebel";
        displayName = "STR_License_Rebel";
        price = 75000;
        illegal = true;
        side = "civ";
    };

    //Cop Licenses
    class cAir {
        variable = "cAir";
        displayName = "STR_License_Pilot";
        price = 15000;
        illegal = false;
        side = "cop";
    };

    class cg {
        variable = "cg";
        displayName = "STR_License_CG";
        price = 8000;
        illegal = false;
        side = "cop";
    };
	
	class cg {
        variable = "LMG1";
        displayName = "STR_License_LMG1";
        price = 8000;
        illegal = false;
        side = "cop";
    }; //SPAR=16S
	class cg {
        variable = "LMG2";
        displayName = "STR_License_LMG2";
        price = 16000;
        illegal = false;
        side = "cop";
    }; //LIM-85
	class cg {
        variable = "LMG3";
        displayName = "STR_License_LMG3";
        price = 32000;
        illegal = false;
        side = "cop";
    }; //MK-200
	class cg {
        variable = "LMG4";
        displayName = "STR_License_LMG4";
        price = 64000;
        illegal = false;
        side = "cop";
    }; //Zaphir
	class cg {
        variable = "LMG5";
        displayName = "STR_License_LMG5";
        price = 128000;
        illegal = false;
        side = "cop";
    }; //Navid
	class cg {
        variable = "LMG6";
        displayName = "STR_License_LMG6";
        price = 256000;
        illegal = false;
        side = "cop";
    }; //SPMG
	class cg {
        variable = "MRK1";
        displayName = "STR_License_MRK1";
        price = 2500;
        illegal = false;
        side = "cop";
    }; //MK18 EMR / Mk14
	class cg {
        variable = "MRK2";
        displayName = "STR_License_MRK2";
        price = 5000;
        illegal = false;
        side = "cop";
    }; //MAR-10
	class cg {
        variable = "MRK3";
        displayName = "STR_License_MRK3";
        price = 10000;
        illegal = false;
        side = "cop";
    }; //MK-1 EMR
	class cg {
        variable = "MRK4";
        displayName = "STR_License_MRK4";
        price = 20000;
        illegal = false;
        side = "cop";
    }; //CMR-76
	class cg {
        variable = "MRK5";
        displayName = "STR_License_MRK5";
        price = 40000;
        illegal = false;
        side = "cop";
    }; //Cyrus 
	class cg {
        variable = "MRK6";
        displayName = "STR_License_MRK6";
        price = 80000;
        illegal = false;
        side = "cop";
    }; //ASP-KIR
	class cg {
        variable = "SNP1";
        displayName = "STR_License_SNP1";
        price = 100000;
        illegal = false;
        side = "cop";
    }; //LYNX
	class cg {
        variable = "SNP2";
        displayName = "STR_License_SNP2";
        price = 200000;
        illegal = false;
        side = "cop";
    }; //M320
	class cg {
        variable = "LPIST1";
        displayName = "STR_License_LPIST1";
        price = 15000;
        illegal = false;
        side = "cop";
    }; //Lethal Pistol
	class cg {
        variable = "CQB1";
        displayName = "STR_License_CQB1";
        price = 10000;
        illegal = false;
        side = "cop";
    }; //MXC
	class cg {
        variable = "CQB2";
        displayName = "STR_License_CQB2";
        price = 20000;
        illegal = false;
        side = "cop";
    }; //Vermin
	class cg {
        variable = "LAUNCH";
        displayName = "STR_License_LAUNCH";
        price = 250000;
        illegal = false;
        side = "cop";
    }; //MX3GL
	class cg {
        variable = "FLAUNCH";
        displayName = "STR_License_FLAUNCH";
        price = 200000;
        illegal = false;
        side = "cop";
    }; //Car 95 With Launcher
	class cg {
        variable = "FRIF";
        displayName = "STR_License_FRIF";
        price = 20000;
        illegal = false;
        side = "cop";
    }; //Car-95
	class cg {
        variable = "FLMG";
        displayName = "STR_License_FLMG";
        price = 50000;
        illegal = false;
        side = "cop";
    }; //CAR-95-1 LMG
	class cg {
        variable = "ASNP";
        displayName = "STR_License_ASNP";
        price = 1000000;
        illegal = false;
        side = "cop";
    }; //Attack Sniper Type 115
	class cg {
        variable = "RANG";
        displayName = "STR_License_RANG";
        price = 50000;
        illegal = false;
        side = "cop";
    }; //Range Finders
	class cg {
        variable = "THERM";
        displayName = "STR_License_THERM";
        price = 100000;
        illegal = false;
        side = "cop";
    }; //Laser Degs
	class cg {
        variable = "TWS";
        displayName = "STR_License_TWS";
        price = 1000000;
        illegal = false;
        side = "cop";
    }; //TWS
	class cg {
        variable = "RGN";
        displayName = "STR_License_RGN";
        price = 20000;
        illegal = false;
        side = "cop";
    }; //Flash
	class cg {
        variable = "RGO";
        displayName = "STR_License_RGO";
        price = 200000;
        illegal = false;
        side = "cop";
    }; //Nade
	

    //Medic Licenses
    class mAir {
        variable = "mAir";
        displayName = "STR_License_Pilot";
        price = 15000;
        illegal = false;
        side = "med";
    };
};
