//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = false;

ZONT_fnc_filterVVS = {
  switch(_this) do {
  	case "HQ": { VVS_HQ + VVS_Wheeled };
  	case "BMO": { VVS_BMO };
  	case "542": { VVS_542 };
  	case "Wheeled": { VVS_Wheeled };
  	case "SWheeled": { VVS_Wheeled_Spec };
  	case "TV": { VVS_TV };
  	case "ISIS": { VVS_ISIS };

  	default {[]};
  };
};

ZONT_fnc_onSpawnVVS = {
  // params ["_mode", "_vehicle"];
  switch(_this) do {
  	case "TV": { {
      _vehicle setVehicleAmmo 0;
      _vehicle setFuel 0
    } };

  	default {nil};
  };
};


VVS_HQ = [

];

VVS_Wheeled = [
];

VVS_TV = [

];

VVS_542 = [

];

VVS_Wheeled_Spec = [
  "B_LSV_01_unarmed_F",
  "B_Quadbike_01_F",
  "rhsusf_mrzr4_d",
  "LOP_AFR_OPF_Offroad"
];

VVS_BMO = [
  "RHS_Ural_Fuel_MSV_01",
  "RHS_Ural_Repair_MSV_01",
  "rhs_gaz66_ammo_msv",
  "rhs_kamaz5350_msv",
  "rhs_kamaz5350_open_msv",
  "rhs_tigr_sts_3camo_msv",
  "rhs_tigr_m_3camo_msv",
  "rhs_tigr_3camo_msv"
];

VVS_ISIS = [
  "LOP_ISTS_Landrover_SPG9",
  "LOP_ISTS_Landrover",
  "LOP_ISTS_Nissan_PKM",
  "LOP_AM_UAZ_AGS",
  "LOP_ISTS_Offroad_M2"
];


VVS_Car = [];
VVS_Air = [];
VVS_Ship = [];
VVS_Armored = [];
VVS_Autonomous = [];
VVS_Support = [];

VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];


/*
this disableAI "move"; this disableAI "radioprotocol"; this disableAI "autocombat"; this disableAI "weaponaim";
this addAction [
"Запрос Техники",
VVS_fnc_openVVS,
[VVS_west_Land,"West"],
6,
true,
true,
"",
"true",
5
];
*/
