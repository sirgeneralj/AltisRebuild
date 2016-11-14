#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000], //Kart (Bluking)
			["C_Kart_01_Fuel_F",15000], //Kart (Fuel)
			["C_Kart_01_Red_F",15000], //Kart (Redstone)
			["C_Kart_01_Vrana_F",15000] //Kart (Vrana)
		];
	};
	case "med_shop":
	{
		if(__GETC__(life_medicLevel) == 0) then
		{
		_return set[count _return,["C_Offroad_01_F",10000]]; //Offroad
		};
		if(__GETC__(life_medicLevel) == 1) then
		{
		_return set[count _return,["C_Offroad_01_F",7500]]; //Offroad
		_return set[count _return,["C_SUV_01_F",25000]]; // SUV
		_return set[count _return,["C_Van_01_box_F",45000]];
		_return set[count _return,["C_Hatchback_01_sport_F",45000]];

		};
		if(__GETC__(life_medicLevel) == 2) then
		{
		_return set[count _return,["C_Offroad_01_F",2500]]; //Offroad
		_return set[count _return,["C_SUV_01_F",15000]]; // SUV
		_return set[count _return,["C_Van_01_box_F",30000]]; //Truck Boxer
		_return set[count _return,["C_Hatchback_01_sport_F",45000]];
		_return set[count _return,["B_Truck_01_medical_F",50000]]; //Medic HEMMT
		};
		if(__GETC__(life_medicLevel) == 3) then
		{
		_return set[count _return,["C_Offroad_01_F",1500]]; //Offroad
		_return set[count _return,["C_SUV_01_F",10000]]; // SUV
		_return set[count _return,["C_Van_01_box_F",20000]]; //Truck Boxer
		_return set[count _return,["C_Hatchback_01_sport_F",45000]];
		_return set[count _return,["B_Truck_01_medical_F",35000]]; //Medic HEMMT
		_return set[count _return,["I_MRAP_03_F",50000]]; //Strider
		};
		if(__GETC__(life_medicLevel) == 4) then
		{
		_return set[count _return,["C_Offroad_01_F",1500]]; //Offroad
		_return set[count _return,["C_SUV_01_F",10000]]; // SUV
		_return set[count _return,["C_Van_01_box_F",20000]]; //Truck Boxer
		_return set[count _return,["C_Hatchback_01_sport_F",45000]];
		_return set[count _return,["B_Truck_01_medical_F",35000]]; //Medic HEMMT
		_return set[count _return,["I_MRAP_03_F",50000]]; //Strider
		};
		if(__GETC__(life_medicLevel) == 5) then
		{
		_return set[count _return,["C_Offroad_01_F",1000]]; //Offroad
		_return set[count _return,["C_SUV_01_F",5000]]; // SUV
		_return set[count _return,["C_Van_01_box_F",7500]]; //Truck Boxer
		_return set[count _return,["C_Hatchback_01_sport_F",20000]];
		_return set[count _return,["B_Truck_01_medical_F",15000]]; //Medic HEMMT
		_return set[count _return,["I_MRAP_03_F",25000]]; //Strider
		};
	};
	
	case "med_air_hs":
	{
		if(__GETC__(life_medicLevel) > 1) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		};
		if(__GETC__(life_medicLevel) > 2) then
		{
		_return set[count _return,["O_Heli_Light_02_unarmed_F",75000]]; //PO-30 Orca (Black)
		};
	};
	
	case "surf_boat":
	{
		if(__GETC__(life_surflevel) > 1) then
		{
		_return set[count _return,["C_Boat_Civil_01_F",5000]];

		};
	};
	
	case "surf_air":
	{
		if(__GETC__(life_surflevel) > 2) then
		{
		_return set[count _return,["I_Heli_light_03_unarmed_F",25000]];

		};
	};
	
	case "surf_car":
	{
		if(__GETC__(life_surflevel) > 1) then
		{
		_return set[count _return,["C_Offroad_01_F",5000]];
		_return set[count _return,["C_SUV_01_F",5000]];

		};
	};
	
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500], //Quadbike
			["C_Hatchback_01_F",9500], //Hatchback
			["C_Offroad_01_F",12500], //Offroad
			["C_SUV_01_F",35000], // SUV
			["C_Van_01_transport_F",40000], //Truck
			["C_Hatchback_01_sport_F",60000], //Hatchback (Sport)
			["C_Offroad_02_unarmed_F",25000]
		];
	};
	
	case "civ_channel7":
	{
		_return = 
		[
			["C_Offroad_01_F",12500], //Offroad
			["O_Heli_Light_02_unarmed_F",750000] //PO-30 Orca (Black)

		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000], //Truck Boxer
			["I_Truck_02_transport_F",100000], //Zamak Transport
			["I_Truck_02_covered_F",120000], // Zamak Transport (Covered)
			["B_Truck_01_mover_F",150000], //HEMTT Mover
			["B_Truck_01_transport_F",700000], //HEMTT Transport
			["B_Truck_01_box_F",1100000], //HEMTT Box
			["O_Truck_03_device_F",900000]  //Tempest (Device)
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500], //Quadbike
			["B_G_Offroad_01_F",15000], //Rebel Offroad
			["O_MRAP_02_F",150000], //Ifrit
			["I_MRAP_03_F",350000],  //Strider
			["B_Heli_Light_01_armed_F",350000], //AH-9 Pawnee
			["I_Heli_light_03_F",500000], //WY-55 Hellcat Armed
			["O_Heli_Transport_04_bench_F",800000], //Taru Bench
			["O_Heli_Transport_04_covered_F",900000], //Taru Transport
			["O_Heli_Transport_04_F",1500000], //Normal Taru
			["O_Heli_Attack_02_black_F",1000000], //Mi-48 Kajman (Black)
			["B_G_Offroad_01_armed_F",750000], //Offroad Armed
			["B_T_VTOL_01_infantry_F",2000000],
			["B_T_LSV_01_unarmed_F",750000]
		];
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]]; //Offroad
        _return set[count _return,
        ["C_SUV_01_F",20000]]; //SUV
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]]; //Hunter
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]]; //Hatchback (Sport)
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_MRAP_03_F",100000]]; //Strider
			_return set[count _return,
			["I_Truck_02_covered_F",50000]];
			_return set[count _return,
			["O_T_LSV_02_unarmed_F",50000]];
			

		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",150000]]; //Hunter HMG
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000], //MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",350000], //M900 Hummingbird
			["O_Heli_Light_02_unarmed_F",750000], //PO-30 Orca (Black)
			["I_Heli_Transport_02_F",900000], //CH-49 Mohawk
			["B_Heli_Transport_03_unarmed_F", 1500000], //Huron Black
			["O_Heli_Transport_04_F",2100000], //Normal Taru
			["I_Plane_Fighter_03_AA_F",7000000], //A-143 Buzzard (AA)
			["O_Plane_CAS_02_F",10000000], //To-199 Neophron (CAS)
			["B_Plane_CAS_01_F",10000000], //A-164 Wipeout (CAS)
			["C_Plane_Civil_01_F",750000]
		];
	};
	
	case "don2_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000], //MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",350000], //M900 Hummingbird
			["O_Heli_Light_02_unarmed_F",750000], //PO-30 Orca (Black)
			["I_Heli_Transport_02_F",900000], //CH-49 Mohawk
			["B_Heli_Transport_03_unarmed_F", 1500000], //Huron Black
			["O_Heli_Transport_04_F",2100000],
			["C_Plane_Civil_01_F",750000],
			["B_T_VTOL_01_infantry_F",2000000]		
		];
	};
	
	case "don3_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000], //MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",350000], //M900 Hummingbird
			["O_Heli_Light_02_unarmed_F",750000], //PO-30 Orca (Black)
			["I_Heli_Transport_02_F",900000], //CH-49 Mohawk
			["B_Heli_Transport_03_unarmed_F", 1500000], //Huron Black
			["O_Heli_Transport_04_F",2100000],
			["C_Plane_Civil_01_F",750000],
			["B_T_VTOL_01_infantry_F",2000000]
		];
	};
	
	case "don3_reb":
	{
		_return = 
		[
			["O_MRAP_02_F",150000], //Ifrit
			["I_MRAP_03_F",350000] //Strider
		];
	};
	
	case "don1_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500], //Quadbike
			["C_Hatchback_01_F",9500], //Hatchback
			["C_Offroad_01_F",12500], //Offroad
			["C_SUV_01_F",35000], // SUV
			["C_Van_01_transport_F",40000], //Truck
			["C_Hatchback_01_sport_F",60000],
			["C_Van_01_box_F",60000], //Truck Boxer
			["I_Truck_02_transport_F",100000], //Zamak Transport
			["I_Truck_02_covered_F",120000], // Zamak Transport (Covered)
			["B_Truck_01_mover_F",150000], //HEMTT Mover
			["B_Truck_01_transport_F",700000], //HEMTT Transport
			["B_Truck_01_box_F",1100000], //HEMTT Box
			["O_Truck_03_device_F",900000],
			["C_Offroad_02_unarmed_F",25000]
		];
	};
	
	case "don2_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500], //Quadbike
			["C_Hatchback_01_F",9500], //Hatchback
			["C_Offroad_01_F",12500], //Offroad
			["C_SUV_01_F",35000], // SUV
			["C_Van_01_transport_F",40000], //Truck
			["C_Hatchback_01_sport_F",60000],
			["C_Van_01_box_F",60000], //Truck Boxer
			["I_Truck_02_transport_F",100000], //Zamak Transport
			["I_Truck_02_covered_F",120000], // Zamak Transport (Covered)
			["B_Truck_01_mover_F",150000], //HEMTT Mover
			["B_Truck_01_transport_F",700000], //HEMTT Transport
			["B_Truck_01_box_F",1100000], //HEMTT Box
			["O_Truck_03_device_F",900000],
			["C_Offroad_02_unarmed_F",25000]
		];
	};
	
	case "don3_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500], //Quadbike
			["C_Hatchback_01_F",9500], //Hatchback
			["C_Offroad_01_F",12500], //Offroad
			["C_SUV_01_F",35000], // SUV
			["C_Van_01_transport_F",40000], //Truck
			["C_Hatchback_01_sport_F",60000],
			["C_Van_01_box_F",60000], //Truck Boxer
			["I_Truck_02_transport_F",100000], //Zamak Transport
			["I_Truck_02_covered_F",120000], // Zamak Transport (Covered)
			["B_Truck_01_mover_F",150000], //HEMTT Mover
			["B_Truck_01_transport_F",700000], //HEMTT Transport
			["B_Truck_01_box_F",1100000], //HEMTT Box
			["O_Truck_03_device_F",900000],
			["C_Offroad_02_unarmed_F",25000]
		];
	};
	//demi
	case "cop_air":
	{
		if(__GETC__(life_coplevel) == 1) then
		{
		_return set[count _return,["B_Heli_Light_01_F",150000]]; //MH-9 Hummingbird
		};
		if(__GETC__(life_coplevel) == 2) then
		{
		_return set[count _return,["B_Heli_Light_01_F",100000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",200000]]; //WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) == 3) then
		{
		_return set[count _return,["B_Heli_Light_01_F",75000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",150000]]; //WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) == 4) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",100000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",200000]]; //UH-80 Ghost Hawk
		};
		if(__GETC__(life_coplevel) == 5) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",100000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",200000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		};
		if(__GETC__(life_coplevel) == 6) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		if(__GETC__(life_coplevel) == 7) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_Heli_Attack_01_F",175000]]; //AH-99 Blackfoot
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		if(__GETC__(life_coplevel) == 8) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_Heli_Attack_01_F",175000]]; //AH-99 Blackfoot
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) == 1) then
		{
		_return set[count _return,["B_Heli_Light_01_F",150000]]; //MH-9 Hummingbird
		};
		if(__GETC__(life_coplevel) == 2) then
		{
		_return set[count _return,["B_Heli_Light_01_F",100000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",200000]]; //WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) == 3) then
		{
		_return set[count _return,["B_Heli_Light_01_F",75000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",150000]]; //WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) == 4) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",100000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",200000]]; //UH-80 Ghost Hawk
		};
		if(__GETC__(life_coplevel) == 5) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",100000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",200000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		};
		if(__GETC__(life_coplevel) == 6) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		if(__GETC__(life_coplevel) == 7) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_Heli_Attack_01_F",175000]]; //AH-99 Blackfoot
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		if(__GETC__(life_coplevel) == 8) then
		{
		_return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
		_return set[count _return,["I_Heli_light_03_unarmed_F",75000]]; //WY-55 Hellcat (Green)
		_return set[count _return,["B_Heli_Transport_01_F",150000]]; //UH-80 Ghost Hawk
		_return set[count _return,["B_Heli_Attack_01_F",175000]]; //AH-99 Blackfoot
		_return set[count _return,["B_UAV_01_F",30000]]; //AR-2 Darter
		_return set[count _return,["B_UGV_01_F",50000]]; //UGV Stomper
		//[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000], //Rescue Boat
			["C_Boat_Civil_01_F",22000], // Motorboat
			["C_Scooter_Transport_01_F",20000] 
		];
	};
	
	case "admin_vehicle": //donator is now used for admins
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,["B_Quadbike_01_F",800]]; //Quadbike
            _return set[count _return,["C_Offroad_01_F",9500]]; //Offroad
            _return set[count _return,["C_SUV_01_F",30000]]; //SUV
            _return set[count _return,["B_Truck_01_box_F",800000]]; //HEMTT Box
            _return set[count _return,["C_Van_01_Fuel_F",8500]]; //Fuel Truck
            _return set[count _return,["C_Hatchback_01_sport_F",40000]]; //Hatchback (Sport)
            _return set[count _return,["B_Heli_Light_01_F",250000]]; //MH-9 Hummingbird
            _return set[count _return,["O_Heli_Light_02_unarmed_F",450000]]; //PO-30 Orca (Black)
            _return set[count _return,["I_Heli_Transport_02_F",750000]]; //CH-49 Mohawk
		};
		//donator is now used for admins
		if(__GETC__(life_donator) == 2) then
		{
			_return set[count _return,["B_Quadbike_01_F",700]]; //Quadbike
            _return set[count _return,["C_Offroad_01_F",8500]]; //Offroad
            _return set[count _return,["C_SUV_01_F",20000]]; //SUV
            _return set[count _return,["I_Truck_02_transport_F",70000]]; //Zamak Transport
            _return set[count _return,["I_Truck_02_covered_F",90000]]; // Zamak Transport (Covered)
            _return set[count _return,["B_Truck_01_mover_F",120000]]; //HEMTT Mover
            _return set[count _return,["O_Truck_03_device_F",600000]]; //Tempest (Device)
            _return set[count _return,["B_Truck_01_box_F",700000]]; //HEMTT Box
            _return set[count _return,["C_Van_01_Fuel_F",7000]]; //Fuel Truck
            _return set[count _return,["C_Hatchback_01_sport_F",30000]]; //Hatchback (Sport)
            _return set[count _return,["B_Heli_Light_01_F",250000]]; //MH-9 Hummingbird
            _return set[count _return,["O_Heli_Light_02_unarmed_F",400000]]; //PO-30 Orca (Black)
            _return set[count _return,["I_Heli_Transport_02_F",750000]]; //CH-49 Mohawk
            _return set[count _return,["B_Heli_Transport_03_unarmed_F",1000000]]; //Huron Black
            _return set[count _return,["C_Heli_Light_01_civil_F",400000]]; //M900 Hummingbird

		};
		//donator is now used for admins
		if(__GETC__(life_donator) == 3) then
		{
			_return set[count _return,["B_Quadbike_01_F",600]]; //Quadbike
            _return set[count _return,["C_Offroad_01_F",7500]]; //Offroad
            _return set[count _return,["C_SUV_01_F",15000]]; //SUV
            _return set[count _return,["I_Truck_02_transport_F",50000]]; //Zamak Transport
            _return set[count _return,["I_Truck_02_covered_F",70000]]; // Zamak Transport (Covered)
            _return set[count _return,["B_Truck_01_mover_F",100000]]; //HEMTT Mover
            _return set[count _return,["O_Truck_03_device_F",400000]]; //Tempest (Device)
            _return set[count _return,["B_Truck_01_box_F",500000]]; //HEMTT Box
            _return set[count _return,["C_Van_01_Fuel_F",7500]]; //Fuel Truck
            _return set[count _return,["C_Hatchback_01_sport_F",20000]]; //Hatchback (Sport)
            _return set[count _return,["B_Heli_Light_01_F",150000]]; //MH-9 Hummingbird
            _return set[count _return,["O_Heli_Light_02_unarmed_F",250000]]; //PO-30 Orca (Black)
            _return set[count _return,["I_Heli_Transport_02_F",400000]]; //CH-49 Mohawk
            _return set[count _return,["B_Heli_Transport_03_unarmed_F",900000]]; //Huron Black
            _return set[count _return,["C_Heli_Light_01_civil_F",300000]]; //M900 Hummingbird
		};	
		//donator is now used for admins
		if(__GETC__(life_donator) == 4) then
		{
		   _return set[count _return,["B_Quadbike_01_F",500]]; //Quadbike
           _return set[count _return,["C_Offroad_01_F",5500]]; //Offroad
           _return set[count _return,["C_SUV_01_F",8000]]; //SUV
           _return set[count _return,["I_Truck_02_transport_F",40000]]; //Zamak Transport
           _return set[count _return,["I_Truck_02_covered_F",60000]]; // Zamak Transport (Covered)
           _return set[count _return,["B_Truck_01_mover_F",80000]]; //HEMTT Mover
           _return set[count _return,["O_Truck_03_device_F",300000]]; //Tempest (Device)
           _return set[count _return,["B_Truck_01_box_F",400000]]; //HEMTT Box
           _return set[count _return,["C_Van_01_Fuel_F",6500]]; //Fuel Truck
           _return set[count _return,["C_Hatchback_01_sport_F",15000]]; //Hatchback (Sport)
		   _return set[count _return,["O_MRAP_02_F",100000]]; //Ifrit
			_return set[count _return,["I_MRAP_03_F",300000]]; //Strider
           _return set[count _return,["B_Heli_Light_01_F",100000]]; //MH-9 Hummingbird
           _return set[count _return,["O_Heli_Light_02_unarmed_F",200000]]; //PO-30 Orca (Black)
           _return set[count _return,["I_Heli_Transport_02_F",300000]]; //CH-49 Mohawk
           _return set[count _return,["B_Heli_Transport_03_unarmed_F",800000]]; //Huron Black
           _return set[count _return,["C_Heli_Light_01_civil_F",200000]]; //M900 Hummingbird
           _return set[count _return,["O_Heli_Transport_04_covered_F",700000]]; //Taru Transport
		};	
		//donator is now used for admins
		if(__GETC__(life_donator) == 5) then
		{
			_return set[count _return,["B_Quadbike_01_F",400]]; //Quadbike
            _return set[count _return,["C_Offroad_01_F",4500]]; //Offroad
            _return set[count _return,["C_SUV_01_F",6000]]; //SUV
            _return set[count _return,["I_Truck_02_transport_F",30000]]; //Zamak Transport
            _return set[count _return,["I_Truck_02_covered_F",50000]]; // Zamak Transport (Covered)
            _return set[count _return,["B_Truck_01_mover_F",70000]]; //HEMTT Mover
            _return set[count _return,["O_Truck_03_device_F",200000]]; //Tempest (Device)
            _return set[count _return,["B_Truck_01_box_F",300000]]; //HEMTT Box
            _return set[count _return,["C_Van_01_Fuel_F",4500]]; //Fuel Truck
            _return set[count _return,["C_Hatchback_01_sport_F",10000]]; //Hatchback (Sport)
			_return set[count _return,["O_MRAP_02_F",75000]]; //Ifrit
			_return set[count _return,["I_MRAP_03_F",200000]]; //Strider
            _return set[count _return,["B_Heli_Light_01_F",50000]]; //MH-9 Hummingbird
            _return set[count _return,["O_Heli_Light_02_unarmed_F",150000]]; //PO-30 Orca (Black)
            _return set[count _return,["I_Heli_Transport_02_F",250000]]; //CH-49 Mohawk
            _return set[count _return,["B_Heli_Transport_03_unarmed_F",700000]]; //Huron Black
            _return set[count _return,["C_Heli_Light_01_civil_F",100000]]; //M900 Hummingbird
            _return set[count _return,["O_Heli_Transport_04_covered_F",600000]]; //Taru Transport
            _return set[count _return,["O_Heli_Transport_04_F",1000000]]; //Normal Taru
         };
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000], //Assault Boat
			["C_Boat_Civil_01_police_F",20000] //Motorboat Rescue
		];
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",70000]]; //Speedboat Minigun
		};
	};
	
	case "adac_car":
	{
		_return =
		[
		["B_Quadbike_01_F",2500] //Quadbike
		];
	};
	
	case "civ_alrs":
	{
		_return =
		[
		["C_SUV_01_F",35000],
		["C_Heli_Light_01_civil_F",300000]
		];
	};
	
	case "adac_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000], //MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",350000], //M900 Hummingbird
			["O_Heli_Light_02_unarmed_F",750000], //PO-30 Orca (Black)
			["I_Heli_Transport_02_F",900000], //CH-49 Mohawk
			["B_Heli_Transport_03_unarmed_F", 1500000], //Huron Black
			["O_Heli_Transport_04_F",2100000], //Normal Taru
			["I_Plane_Fighter_03_AA_F",7000000], //A-143 Buzzard (AA)
			["O_Plane_CAS_02_F",10000000], //To-199 Neophron (CAS)
			["B_Plane_CAS_01_F",15000000] //A-164 Wipeout (CAS)
		];
	};
};

_return;

