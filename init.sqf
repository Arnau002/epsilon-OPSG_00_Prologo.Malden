//========================================================================\\
// Arxiu: init.sqf                                                        \\                               
// Autor: CE_Arnau002                                                     \\                               
// Versió: 0.1                                                            \\                               
// Creació del Document: 29/03/2020                                       \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//--------------------------------VARIABLES-------------------------------\\
//------------------------------------------------------------------------\\

missionPhase = 0; // Descripció al final de l'apartat Variables
objAlive = 6; // Variable per comptar els objectius vius 

//------------------------------------------------------------------------\\
// --- missionPhase = 0; --- Inici Partida -------------------------------\\
// --- missionPhase = 1; --- Inserció Jugadors ---------------------------\\
// --- missionPhase = 2; --- Aproximació a Objectiu ----------------------\\
// --- missionPhase = 3; --- Objectiu Capturat (Intent Extracció) --------\\
// --- missionPhase = 4; --- Desplaçament a Zona extracció presoners -----\\
// --- missionPhase = 5; --- Arribada a Zona extracció presoners ---------\\
// --- missionPhase = 6; --- Extracció presoners -------------------------\\
// --- missionPhase = 7; --- Desplaçament a zona extracció jugadors ------\\
// --- missionPhase = 8; --- Arribada a zona extracció jugadors ----------\\
// --- missionPhase = 9; --- Extracció jugadors --------------------------\\
// --- missionPhase = 10; -- Final Partida -------------------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//------------------DESACTIVAR GUARDAT I GUARDAT AUTOMÀTIC----------------\\
//------------------------------------------------------------------------\\

enableSaving [false, false];

//------------------------------------------------------------------------\\
//------------------------------CREAR BRIEFING----------------------------\\
//------------------------------------------------------------------------\\

briefing = [] execVM "scripts\briefing\briefing.sqf";



//------------------------------------------------------------------------\\
//-------------------------------CREAR TASCA------------------------------\\
//------------------------------------------------------------------------\\

[true, ["tsk_capt"],"", [4289.002,6837.027,0], "CREATED",-1, true, "target"] 
call BIS_fnc_taskCreate;

//------------------------------------------------------------------------\\
//--------------------------CREAR MARQUES AL MAPA-------------------------\\
//------------------------------------------------------------------------\\

_mkHeli1In = createMarker ["mkHeli1In", [3870.201,7385.277] ];
_mkHeli1In setMarkerShape "ICON";
_mkHeli1In setMarkerType "hd_start";
_mkHeli1In setMarkerColor "colorIndependent";
_mkHeli1In setMarkerText "Mike";

_mkHeli2In = createMarker ["mkHeli2In", [3533.947,7091.984] ];
_mkHeli2In setMarkerShape "ICON";
_mkHeli2In setMarkerType "hd_start";
_mkHeli2In setMarkerColor "colorOPFOR";
_mkHeli2In setMarkerText "Sierra";

_mkHeli3In = createMarker ["mkHeli3In", [4466.727,5724.403] ];
_mkHeli3In setMarkerShape "ICON";
_mkHeli3In setMarkerType "hd_start";
_mkHeli3In setMarkerColor "ColorBLUFOR";
_mkHeli3In setMarkerText "Victor";


//------------------------------------------------------------------------\\
//--------------------CAPTURES DEL MOVIMENT DE VEHICLES-------------------\\
//------------------------------------------------------------------------\\

wp_heli1_in = compile preprocessfile "scripts\unitcapture\wp_heli1_in.sqf";
wp_heli1_inLh = compile preprocessfile "scripts\unitcapture\wp_heli1_inLh.sqf";
wp_heli1_outLh = compile preprocessfile "scripts\unitcapture\wp_heli1_outLh.sqf";

wp_heli2_in = compile preprocessfile "scripts\unitcapture\wp_heli2_in.sqf";
wp_heli2_inLh = compile preprocessfile "scripts\unitcapture\wp_heli2_inLh.sqf";
wp_heli2_outLh = compile preprocessfile "scripts\unitcapture\wp_heli2_outLh.sqf";

wp_heli3_in = compile preprocessfile "scripts\unitcapture\wp_heli3_in.sqf";
wp_heli3_inLh = compile preprocessfile "scripts\unitcapture\wp_heli3_inLh.sqf";
wp_heli3_outLh = compile preprocessfile "scripts\unitcapture\wp_heli3_outLh.sqf";

wp_heli4_in = compile preprocessfile "scripts\unitcapture\wp_heli4_in.sqf";

wp_heli5_in = compile preprocessfile "scripts\unitcapture\wp_heli5_in.sqf";
wp_heli5_out = compile preprocessfile "scripts\unitcapture\wp_heli5_out.sqf";

wp_pln1 = compile preprocessfile "scripts\unitcapture\wp_pln1.sqf" ;

//------------------------------------------------------------------------\\
//----------------------CREAR ACCIÓ A L'AGAFAR INTEL----------------------\\
//------------------------------------------------------------------------\\

myaction = laptop addAction ["Ordenador", "scripts\intel.sqf"];

//------------------------------------------------------------------------\\
//----------------------------EXECUTA ZEUS SQF----------------------------\\
//------------------------------------------------------------------------\\

if ( isServer ) then {
	cc_script_zeus = [] execVM "scripts\zeus\zeus_init.sqf"
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\