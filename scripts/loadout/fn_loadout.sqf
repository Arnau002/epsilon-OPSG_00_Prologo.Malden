//========================================================================\\
// Arxiu: fn_loadout.sqf                                                  \\                
// Autor: Arnau002                                                        \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 11/06/2021                                       \\                              
// Descripció: Carrega equipament dels jugadors                           \\
//             Per executar-lo cal afegir la següent línia al INIT        \\
//             de la unitat en l'editor:                                  \\
//                                                                        \\
//              ["ROL_JUGADOR",this] call opsg_fnc_loadout;               \\
//                                   on                                   \\
//              "ROL_JUGADOR" és una de les següents entrades:            \\
//                                                                        \\
//                  ROL_JUGADOR         Rol assignat                      \\
//                  sgt                 Sergent                           \\
//                  cpr                 Caporal                           \\
//                  mg                  Ametrallador                      \\
//                  mga                 Assistent Ametrallador            \\
//                  grn                 Granader                          \\
//                  at                  Antitanc                          \\
//                  rm17                Fuseller Mk17                     \\
//                  mkm                 Tirador Designat MK17             \\
//                  sp4                 Observador M4                     \\
//                  snp                 Franctirador M107                 \\
//                  sp11                Observador MK11                   \\
//                  mdc                 Metge                             \\
//                  dem                 Demolicions                       \\
//                  rep                 Reparacions                       \\
//                                                                        \\
// Canvis: 0.1 (2021/06/12) Versió inicial.                               \\
//         0.2 (2021/07/02) Corregir classname pistola i canviar lloc on  \\
//                          s'assigna al jugador                          \\             
//========================================================================\\

//------------------------------------------------------------------------\\
//-----------------------------OBTENIR UNITAT-----------------------------\\
//------------------------------------------------------------------------\\

_unitType = toLower (_this select 0);
_unit = _this select 1;
_isInfantry = _unit isKindOf "CAManBase"; 

//------------------------------------------------------------------------\\
//---------------PARAR EXECUCIO DEPENENT DES D'ON S'EXECUTA---------------\\
//------------------------------------------------------------------------\\

if !(local _unit) exitWith {};

//------------------------------------------------------------------------\\
//----------------------------RESUM EQUIPACIÓ-----------------------------\\
//------------------------------------------------------------------------\\
//---------------------------------General--------------------------------\\
//------------------------------------------------------------------------\\


//------------------------------Arma Principal----------------------------\\
_m4A1_BkII = "rhs_weap_m4a1_blockII_KAC";
_m4A1 = "rhs_weap_m4a1";
_m4A1_BkII_Gr = "rhs_weap_m4a1_blockII_M203";
_m4A1_PIP = "rhs_weap_m4a1_mstock";
_mk17CQC = "rhs_weap_mk17_CQC";
_mk17LB = "rhs_weap_mk17_LB";
_m249 = "rhs_weap_m249_light_S";
_m107 = "rhs_weap_M107";
_mk11 = "rhs_weap_sr25_ec";
_mk18 = "rhs_weap_mk18_KAC";

//-------------------------------Silenciador------------------------------\\
_m4Silencer = "rhsusf_acc_nt4_black";
_scarSilencer = "rhsusf_acc_aac_scarh_silencer";
_mk11Silencer = "rhsusf_acc_aac_762sdn6_silencer";
_m4Suppressor = "rhsusf_acc_SF3P556";

//----------------------------------Mires---------------------------------\\
_accSu230Mrds = "rhsusf_acc_su230_mrds";
_accSu230MrdsCoy = "rhsusf_acc_su230_mrds_c";
_accSu230 = "rhsusf_acc_su230"; 
_accSu230Coy = "rhsusf_acc_su230_c";
_accM8541Mrds = "rhsusf_acc_M8541_mrds";
_accPremier = "rhsusf_acc_premier";

//------------------------------Laser/Llanterna---------------------------\\
_laserSideBlack = "rhsusf_acc_anpeq15side_bk";
_laserTan = "rhsusf_acc_anpeq15";
_laserSideTan = "rhsusf_acc_anpeq15side";

_flashlight = "rhsusf_acc_wmx_bk";

//---------------------------------Bípodes--------------------------------\\
_bipodMG = "rhsusf_acc_saw_bipodMG";
_bipodMKM = "rhsusf_acc_harris_bipodMG";

_mk17GripTan = "rhs_weap_mk17_CQC_grip2";
_rvgGripBlack = "rhsusf_acc_rvg_blk";

//----------------------------------AT/AA---------------------------------\\
_atHEDP = "rhs_weap_M136_hedp";

//---------------------------------Pistoles-------------------------------\\
_glock = "rhsusf_weap_glock17g4";

//--------------------------------Uniformes-------------------------------\\
_m81 = "rhs_uniform_g3_m81";
_wetsuit = "U_B_Wetsuit";

//---------------------------------Armilles-------------------------------\\
_mbavRif = "rhsusf_mbav_rifleman";
_mbavMg = "rhsusf_mbav_mg";
_mbavGr = "rhsusf_mbav_grenadier";
_mbavMdc = "rhsusf_mbav_medic";
_mbavMkm = "rhsusf_plateframe_marksman";
_mbavLight = "rhsusf_mbav_light";
_rebreather = "V_RebreatherB";

//-------------------------------Motxilles--------------------------------\\
_fieldBlack = "B_FieldPack_blk";
_eagleOCP = "rhsusf_assault_eagleaiii_ocp";
_eagleCOY = "rhsusf_assault_eagleaiii_coy";
_eagleRaven = "B_rhsusf_B_BACKPACK";
_falconCoy = "rhsusf_falconii_coy";

//----------------------------------Cascs---------------------------------\\
_booniehatM81 = "rhs_Booniehat_m81";
_norotos = "rhsusf_mich_bare_norotos";
_norotosAlt = "rhsusf_mich_bare_norotos_alt";
_norotosAltHead = "rhsusf_mich_bare_norotos_alt_headset";
_norotosArc = "rhsusf_mich_bare_norotos_arc";
_norotosTan = "rhsusf_mich_bare_norotos_tan";
_norotosArcAltTan = "rhsusf_mich_bare_norotos_arc_alt_tan";

//---------------------------------Ulleres--------------------------------\\
_googlesBlack = "rhs_googles_black";
_googlesClear = "rhs_googles_clear";
_googlesBallistic = "rhs_ess_black";
_diveMask = "G_B_Diving";

//--------------------------------Carregadors-----------------------------\\
_m4MAG = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_mk17MAG = "rhs_mag_20Rnd_SCAR_762x51_m80a1_epr";
_mk17Special_MAG = "rhs_mag_20Rnd_SCAR_762x51_m118_special";
_m249MAG = "rhsusf_200Rnd_556x45_box";
_m107MAG = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
_m107MAG_HE = "ffaa_127x99_he";
_m107MAG_AP = "ffaa_127x99_ap";
_mk11MAG = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
_glockMAG = "rhsusf_mag_17Rnd_9x19_FMJ";

_hedpGR = "rhs_mag_M433_HEDP";
_wSmkGR = "rhs_mag_m714_White";
_gSmkGR = "rhs_mag_m716_yellow";
_rSmkGR = "rhs_mag_m715_Green";
_ySmkGR = "rhs_mag_m713_Red";
_wFlarGR = "rhs_mag_M585_white";
_gFlarGR = "rhs_mag_m661_green";
_rFlarGR = "rhs_mag_m662_red";
_buckGR = "rhs_mag_m576";
_glStunGR = "rhs_mag_m4009";

_atHEDPMAG = "rhs_m136_hedp_mag";

//---------------------------------Granades-------------------------------\\
_fragG = "rhs_mag_m67";
_stunG = "rhs_mag_mk84";
_smokeG = "rhs_mag_an_m8hc";
_rSmokeG = "rhs_mag_m18_red";
_gSmokeG = "rhs_mag_m18_green";
_ySmokeG = "rhs_mag_m18_yellow";
_incG = "rhs_mag_an_m14_th3";

//--------------------------------Explosius-------------------------------\\
_m112EXP = "rhsusf_m112_mag";
_m112x4EXP = "rhsusf_m112x4_mag";
_claymoreEXP = "ClaymoreDirectionalMine_Remote_Mag";

//---------------------------------Objectes-------------------------------\\
_watch = "ItemWatch";//
_map = "ItemMap";
_compass = "ItemCompass";
_radio = "tf_rf7800str";
_microDAGR = "tf_microdagr";//
_radioOfficer = "tf_anprc152";
_toolKit = "ToolKit";

//--------------------------------Prismàtics------------------------------\\
_lercaBlack = "rhsusf_bino_lerca_1200_black";
_binoculars = "rhsusf_bino_m24";

//------------------------------Visió Nocturna----------------------------\\
_nightVision = "rhsusf_ANPVS_15";

//------------------------------------------------------------------------\\
//----------------------------------ACE3----------------------------------\\
//------------------------------------------------------------------------\\

_earPlugs = "ACE_EarPlugs";

_surgicalKit = "ACE_surgicalKit";
_personalAidKit = "ACE_personalAidKit";

_epinephrine = "ACE_epinephrine";
_morphine = "ACE_morphine";

_fieldDressing = "ACE_fieldDressing";
_elasticBandage = "ACE_elasticBandage";
_packingBandage = "ACE_packingBandage";
_quikclot = "ACE_quikclot";

_tourniquet = "ACE_tourniquet";

_saline250 = "ACE_salineIV_250";

_blood250 = "ACE_bloodIV_250";

_maglite = "ACE_Flashlight_XL50";

_irStrobe = "ACE_IR_Strobe_Item";

_rangeCard = "ACE_RangeCard";
_kestrel = "ACE_Kestrel4500";
_aTragMx = "ACE_ATragMX";
_gps = "ACE_microDAGR";
_altimeter = "ACE_Altimeter";//

_cableTie = "ACE_CableTie";
_entrTool = "ACE_EntrenchingTool";
_sandbag = "ACE_Sandbag_empty";
_clacker = "ACE_Clacker";
_defusalKit = "ACE_DefusalKit";

_bodyBag = "ACE_bodyBag";

//------------------------------------------------------------------------\\
//------ELIMINAR EQUIPACIÓ SI ÉS INFANTERIA I ASSIGANR EQUIP GENÈRIC------\\
//------------------------------------------------------------------------\\

if(_isInfantry) then 
{	
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeAllItemsWithMagazines _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;	
	
	// Uniforme
	_unit forceaddUniform _m81;
	
	// Equip Comú
	_unit addItemToUniform _nightVision;
	_unit addItemToUniform _earPlugs;
	_unit addItemToUniform _epinephrine;
	_unit addItemToUniform _morphine;
	_unit addItemToUniform _tourniquet;
	(uniformContainer _unit) addItemCargoGlobal [_fieldDressing,2];
	(uniformContainer _unit) addItemCargoGlobal [_packingBandage,6];
	(uniformContainer _unit) addItemCargoGlobal [_quikclot,6];
	(uniformContainer _unit) addItemCargoGlobal [_elasticBandage,2];

	_unit linkItem _map;
	_unit linkItem _compass;	
};

//------------------------------------------------------------------------\\
//--------------------------ASSIGNAR EQUIPACIÓ----------------------------\\
//------------------------------------------------------------------------\\


//-----------------------------Radio i Rellotge---------------------------\\

switch (_unitType) do
{
	// Sergent, Caporal i Franctirador M107 
	case "sgt":
	{
		_unit linkItem _radioOfficer;
		_unit linkItem _watch;
	};
	case "cpr";
	case "snp":
	{
		_unit linkItem _radioOfficer;	
		_unit linkItem _altimeter;
	};
	// Resta de perfils
	default
	{
		_unit linkItem _radio;
		_unit linkItem _microDAGR;
	};
};


//---------------------------------General--------------------------------\\

switch (_unitType) do
{
	// Sergent, Caporal i Franctirador M107 
	case "sgt":
	{
		// Armes
		_unit addWeapon _m4A1_BkII;
		_unit addPrimaryWeaponItem _accSu230Mrds;
		_unit addPrimaryWeaponItem _laserTan;
		_unit addPrimaryWeaponItem _m4MAG;

		// Armilla i Motxilla
		_unit addVest _mbavRif;
		_unit addBackpack _eagleRaven;
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_rSmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_gSmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_ySmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];	
		
		(vestContainer _unit) addItemCargoGlobal [_cableTie,6];
		_unit addItemToVest _gps;

		// Ulleres i Casc
		_unit addHeadgear _norotosAltHead;
		_unit addGoggles _googlesBlack;

		// Prismàtics 		
		_unit addWeapon _lercaBlack;
	};
	
	// Caporal
	case "cpr":
	{
		// Armes
		_unit addWeapon _m4A1_BkII;
		_unit addPrimaryWeaponItem _accSu230MrdsCoy;
		_unit addPrimaryWeaponItem _laserTan;		
		_unit addPrimaryWeaponItem _m4MAG;
		_unit addPrimaryWeaponItem _bipodMKM;		
		
		// Armilla
		_unit addVest _mbavRif;		
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_rSmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_gSmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_ySmokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,1];	
		
		(vestContainer _unit) addItemCargoGlobal [_cableTie,3];

		// Ulleres i Casc
		_unit addHeadgear _norotosAlt;
		_unit addGoggles _googlesBlack;

		// Prismàtics
		_unit addWeapon _binoculars;
	};
	
	// Ametrallador
	case "mg":
	{
		// Armes
		_unit addWeapon _m249;
		_unit addPrimaryWeaponItem _accSu230Mrds;
		_unit addPrimaryWeaponItem _laserSideBlack;	
		_unit addPrimaryWeaponItem _bipodMG;
		_unit addPrimaryWeaponItem _m249MAG;				
		
		// Armilla i Motxilla
		_unit addVest _mbavMg;
		_unit addBackpack _eagleCOY;
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m249MAG,1];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,2];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];		
		
		// Objectes de la Motxilla
		(unitBackpack _unit) addItemCargoGlobal [_m249MAG,2];
		
		// Ulleres i Casc
		_unit addHeadgear _norotosArc;
		_unit addGoggles _googlesBlack;		
	};
	
	// Assistent Ametrallador 
	case "mga":
	{
		// Armes
		_unit addWeapon _m4A1_BkII;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;		
		_unit addPrimaryWeaponItem _m4MAG;		
		
		// Armilla i Motxilla
		_unit addVest _mbavRif;
		_unit addBackpack _falconCoy;
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_stunG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];	
		
		// Objectes de la Motxilla
		(unitBackpack _unit) addItemCargoGlobal [_m249MAG,2];
		
		// Ulleres i Casc
		_unit addHeadgear _norotos;
		_unit addGoggles _googlesClear;
	};
	
	// Granader
	case "grn":
	{
		// Armes
		_unit addWeapon _m4A1_BkII_Gr;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;		
		_unit addPrimaryWeaponItem _m4MAG;
		_unit addPrimaryWeaponItem _hedpGR;

		// Armilla i Motxilla
		_unit addVest _mbavGr;
		_unit addBackpack _falconCoy;
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_fragG,1];
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		
		// Objectes de la Motxilla
		(unitBackpack _unit) addItemCargoGlobal [_hedpGR,9];
		(unitBackpack _unit) addItemCargoGlobal [_wSmkGR,5];
		(unitBackpack _unit) addItemCargoGlobal [_wFlarGR,5];
		(unitBackpack _unit) addItemCargoGlobal [_gFlarGR,2];
		(unitBackpack _unit) addItemCargoGlobal [_rFlarGR,2];
		(unitBackpack _unit) addItemCargoGlobal [_buckGR,5];		
		(unitBackpack _unit) addItemCargoGlobal [_glStunGR,2];	

		// Ulleres i Casc
		_unit addHeadgear _norotos;
		_unit addGoggles _googlesBlack;
	};
	
	// Antitanc
	case "at":
	{
		// Armes
		_unit addWeapon _m4A1_BkII;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;		
		_unit addPrimaryWeaponItem _m4MAG;
		_unit addWeapon _atHEDP;
		_unit addSecondaryWeaponItem _atHEDPMAG;		
		
		// Armilla
		_unit addVest _mbavRif;
		
		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_stunG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];
		
		// Ulleres i Casc
		_unit addHeadgear _norotos;
		_unit addGoggles _googlesClear;
	};
	
	// Fuseller Mk17 
	case "rm17":
	{
		// Armes
		_unit addWeapon _mk17CQC;
		_unit addPrimaryWeaponItem _accSu230Coy;
		_unit addPrimaryWeaponItem _laserSideTan;
		_unit addPrimaryWeaponItem _mk17MAG;

		// Armilla
		_unit addVest _mbavMkm;

		// Objectes de l'Armilla
		_unit addItemToVest _scarSilencer;
		(vestContainer _unit) addItemCargoGlobal [_mk17MAG,5];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_stunG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];
		
		// Ulleres i Casc
		_unit addHeadgear _norotos;
		_unit addGoggles _googlesClear;
	};
	
	// Tirador Designat MK17 
	case "mkm":
	{		
		// Armes
		_unit addWeapon _mk17LB ;
		_unit addPrimaryWeaponItem _accM8541Mrds;
		_unit addPrimaryWeaponItem _laserSideTan;
		_unit addPrimaryWeaponItem _bipodMKM;
		_unit addPrimaryWeaponItem _mk17Special_MAG;

		// Armilla
		_unit addVest _mbavMkm;

		// Objectes de l'Armilla
		_unit addItemToVest _scarSilencer;
		_unit addItemToVest _rangeCard;
		_unit addItemToVest _aTragMx;
		_unit addItemToVest _kestrel;		
		(vestContainer _unit) addItemCargoGlobal [_mk17Special_MAG,5];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];

		// Ulleres i Casc
		_unit addHeadgear _norotosArc;
		_unit addGoggles _googlesBlack;
		
		// Prismàtics
		_unit addWeapon _lercaBlack;
	};
	
	// Observador M4 
	case "sp4":
	{
		// Armes
		_unit addWeapon _m4A1_BkII;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;
		_unit addPrimaryWeaponItem _bipodMKM;
		_unit addPrimaryWeaponItem _m4MAG;

		// Armilla
		_unit addVest _mbavLight;

		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		_unit addItemToVest _rangeCard;
		_unit addItemToVest _aTragMx;
		_unit addItemToVest _kestrel;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];

		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];

		// Ulleres i Casc
		_unit addHeadgear _booniehatM81;
		_unit addGoggles _googlesBlack;
		
		// Prismàtics
		_unit addWeapon _lercaBlack;
	};
	
	// Franctirador M107 
	case "snp":
	{
		// Armes
		_unit addWeapon _m107;
		_unit addPrimaryWeaponItem _accPremier;
		_unit addPrimaryWeaponItem _m107MAG;

		// Armilla
		_unit addVest _mbavMg;

		// Objectes de l'Armilla
		_unit addItemToVest _rangeCard;
		_unit addItemToVest _aTragMx;
		_unit addItemToVest _kestrel;
		(vestContainer _unit) addItemCargoGlobal [_m107MAG,2];
		(vestContainer _unit) addItemCargoGlobal [_m107MAG_HE,3];
		(vestContainer _unit) addItemCargoGlobal [_m107MAG_AP,2];			
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,3];

		// Ulleres i Casc
		_unit addHeadgear _booniehatM81;
		_unit addGoggles _googlesBlack;
		
		// Prismàtics
		_unit addWeapon _lercaBlack;
	};
	
	// Observador MK11 
	case "sp11":
	{
		// Armes
		_unit addWeapon _mk11;
		_unit addPrimaryWeaponItem _accPremier;
		_unit addPrimaryWeaponItem _bipodMKM;
		_unit addPrimaryWeaponItem _mk11MAG;

		// Armilla
		_unit addVest _mbavMg;

		// Objectes de l'Armilla
		_unit addItemToVest _mk11Silencer;
		_unit addItemToVest _rangeCard;
		_unit addItemToVest _aTragMx;
		_unit addItemToVest _kestrel;
		(vestContainer _unit) addItemCargoGlobal [_mk11MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,2];
		
		// Ulleres i Casc
		_unit addHeadgear _booniehatM81;
		_unit addGoggles _googlesBlack;
	
		// Prismàtics
		_unit addWeapon _lercaBlack;
	};
	
	// Metge 
	case "mdc":
	{
		// Armes
		_unit addWeapon _mk18;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;
		_unit addPrimaryWeaponItem _m4MAG;

		// Armilla i Motxilla
		_unit addVest _mbavMdc;
		_unit addBackpack _eagleOCP;

		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,5];
		(vestContainer _unit) addItemCargoGlobal [_smokeG,3];		
		(vestContainer _unit) addItemCargoGlobal [_fieldDressing,10];
		(vestContainer _unit) addItemCargoGlobal [_elasticBandage,14];
		(vestContainer _unit) addItemCargoGlobal [_packingBandage,30];
		(vestContainer _unit) addItemCargoGlobal [_quikclot,25];

		// Objectes de la Motxilla
		_unit addItemToBackpack _surgicalKit;
		(unitBackpack _unit) addItemCargoGlobal [_morphine,20];	
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,10];
		(unitBackpack _unit) addItemCargoGlobal [_personalAidKit,5];
		(unitBackpack _unit) addItemCargoGlobal [_elasticBandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_packingBandage,10];
		(unitBackpack _unit) addItemCargoGlobal [_quikclot,10];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,7];
		(unitBackpack _unit) addItemCargoGlobal [_saline250,5];
		(unitBackpack _unit) addItemCargoGlobal [_blood250,10];

		// Ulleres i Casc
		_unit addHeadgear _norotosArcAltTan;
		_unit addGoggles _googlesClear;
	};
	
	// Demolicions	
	case "dem":
	{
		// Armes
		_unit addWeapon _m4A1;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _laserSideBlack;
		_unit addPrimaryWeaponItem _m4MAG;

		// Armilla i Motxilla
		_unit addVest _mbavRif;
		_unit addBackpack _eagleCOY;

		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,7];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];
		
		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_stunG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];
		_unit addItemToVest _clacker;

		// Objectes de la Motxilla
		(unitBackpack _unit) addItemCargoGlobal [_m112EXP,2];
		(unitBackpack _unit) addItemCargoGlobal [_m112x4EXP,1];
		(unitBackpack _unit) addItemCargoGlobal [_claymoreEXP,3];		
	
		// Ulleres i Casc
		_unit addHeadgear _norotosTan;
		_unit addGoggles _googlesBlack;
	};
	
	// Reparacions
	case "rep":
	{
		// Armes
		_unit addWeapon _m4A1_PIP;
		_unit addPrimaryWeaponItem _accSu230;
		_unit addPrimaryWeaponItem _m4Suppressor;
		_unit addPrimaryWeaponItem _laserSideBlack;
		_unit addPrimaryWeaponItem _rvgGripBlack;
		_unit addPrimaryWeaponItem _m4MAG;

		// Armilla i Motxilla
		_unit addVest _mbavRif;
		_unit addBackpack _eagleCOY;

		// Objectes de l'Armilla
		_unit addItemToVest _m4Silencer;
		(vestContainer _unit) addItemCargoGlobal [_m4MAG,6];
		(vestContainer _unit) addItemCargoGlobal [_glockMAG,2];

		(vestContainer _unit) addItemCargoGlobal [_smokeG,1];
		(vestContainer _unit) addItemCargoGlobal [_stunG,1];
		(vestContainer _unit) addItemCargoGlobal [_fragG,2];
		
		// Objectes de la Motxilla
		_unit addItemToBackpack _toolKit;		
		_unit addItemToBackpack _entrTool;
		(unitBackpack _unit) addItemCargoGlobal [_cableTie,10];
		(unitBackpack _unit) addItemCargoGlobal [_sandbag,5];

		// Ulleres i Casc
		_unit addHeadgear _norotosTan;
		_unit addGoggles _googlesBallistic;
	};
};


//------------------------------------------------------------------------\\
//-----------------------ASSIGNAR EQUIPACIÓ CAIXES------------------------\\
//------------------------------------------------------------------------\\

switch (_unitType) do
{
	// Sergent i Caporal
	case "sgt";
	case "cpr":
	{
		weaponsBox addItemCargoGlobal [_m4MAG, 2];
		
		weaponsBox addItemCargoGlobal [_rSmokeG, 3];
		weaponsBox addItemCargoGlobal [_gSmokeG, 3];
		weaponsBox addItemCargoGlobal [_ySmokeG, 3];

		equipmentBox addBackpackCargoglobal [_falconCoy, 1];
	};
	
	// Ametrallador
	case "mg":
	{
		weaponsBox addItemCargoGlobal [_m249MAG, 2];		
	};
	
	// Granader
	case "grn":
	{
		weaponsBox addItemCargoGlobal [_m4MAG, 2];

		weaponsBox addItemCargoGlobal [_hedpGR, 10];
		weaponsBox addItemCargoGlobal [_wSmkGR, 7];
		
		weaponsBox addItemCargoGlobal [_gSmkGR, 5];
		weaponsBox addItemCargoGlobal [_rSmkGR, 5];
		weaponsBox addItemCargoGlobal [_ySmkGR, 5];
		weaponsBox addItemCargoGlobal [_wFlarGR, 4];
		weaponsBox addItemCargoGlobal [_gFlarGR, 2];
		weaponsBox addItemCargoGlobal [_rFlarGR, 2];
		weaponsBox addItemCargoGlobal [_buckGR, 4];
		weaponsBox addItemCargoGlobal [_glStunGR, 4];
	};
	
	// Antitanc
	case "at":
	{
		weaponsBox addWeaponCargoGlobal [_atHEDP,3];
		weaponsBox addItemCargoGlobal [_atHEDPMAG, 3];		
		weaponsBox addItemCargoGlobal [_m4MAG, 2];
		
		equipmentBox addBackpackCargoglobal [_eagleCOY, 1];
	};
	
	// Fuseller Mk17 
	case "rm17":
	{
		weaponsBox addItemCargoGlobal [_mk17MAG, 3];		
	};
	
	// Tirador Designat MK17 
	case "mkm":
	{		
		weaponsBox addItemCargoGlobal [_mk17Special_MAG, 3];	

		equipmentBox addBackpackCargoglobal [_eagleCOY, 1];
	};	
	
	// Franctirador M107 
	case "snp":
	{
		weaponsBox addItemCargoGlobal [_m107MAG, 4];
		weaponsBox addItemCargoGlobal [_m107MAG_HE, 4];
		weaponsBox addItemCargoGlobal [_m107MAG_AP, 4];
		weaponsBox addItemCargoGlobal [_glockMAG, 1];

		equipmentBox addBackpackCargoglobal [_eagleCOY, 1];
	};
	
	// Observador MK11 
	case "sp11":
	{
		weaponsBox addItemCargoGlobal [_mk11MAG, 3];
		
		equipmentBox addBackpackCargoglobal [_eagleCOY, 1];
	};	
	
	// Demolicions	
	case "dem":
	{
		weaponsBox addItemCargoGlobal [_m4MAG, 2];
		
		weaponsBox addItemCargoGlobal [_m112EXP, 4];
		weaponsBox addItemCargoGlobal [_m112x4EXP, 2];
		weaponsBox addItemCargoGlobal [_claymoreEXP, 4];
		weaponsBox addItemCargoGlobal [_incG, 5];
		
		equipmentBox addItemCargoGlobal [_defusalKit, 2];
	};
	
	// Resta de perfils
	default
	{
		weaponsBox addItemCargoGlobal [_m4MAG, 2];
		weaponsBox addItemCargoGlobal [_smokeG, 1];
		weaponsBox addItemCargoGlobal [_stunG, 1];
		weaponsBox addItemCargoGlobal [_fragG, 2];			
	};
};

//------------------------Equip per Jugador i Pistola---------------------\\

if(_isInfantry) then 
{	
	// Pistola 
	_unit addWeapon _glock;
	_unit addHandgunItem _glockMAG;	
	
	weaponsBox addItemCargoGlobal [_glockMAG, 1];
	
	equipmentBox addItemCargoGlobal [_flashlight, 1];
	equipmentBox addItemCargoGlobal [_bodyBag, 1];	
	equipmentBox addItemCargoGlobal [_personalAidKit, 1];
	equipmentBox addItemCargoGlobal [_epinephrine, 1];
	equipmentBox addItemCargoGlobal [_morphine, 2];
	equipmentBox addItemCargoGlobal [_fieldDressing, 2];
	equipmentBox addItemCargoGlobal [_elasticBandage, 2];
	equipmentBox addItemCargoGlobal [_packingBandage, 4];
	equipmentBox addItemCargoGlobal [_quikclot, 3];
	equipmentBox addItemCargoGlobal [_tourniquet, 1];
	equipmentBox addItemCargoGlobal [_saline250, 1];
	equipmentBox addItemCargoGlobal [_blood250, 1];
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\