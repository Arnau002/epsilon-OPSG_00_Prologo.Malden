//========================================================================\\
// Arxiu: init.sqf                                                        \\                               
// Autor: Arnau002                                                        \\                               
// Versió: 0.1                                                            \\                               
// Creació del Document: 29/03/2020                                       \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//--------------------------------VARIABLES-------------------------------\\
//------------------------------------------------------------------------\\

missionPhase = 0; // Descripció al final de l'apartat Variables
objAlive = 2; // Variable per comptar els objectius vius (2-Tots, 1-De 1 a 5, 0-Cap)

//------------------------------------------------------------------------\\
// --- missionPhase = 0; --- Inici Partida -------------------------------\\
// --- missionPhase = 1; --- Inserció Jugadors ---------------------------\\
// --- missionPhase = 2; --- Aproximació a Objectiu ----------------------\\
// --- missionPhase = 3; --- Objectiu Capturat (Intent Extracció) --------\\
// --- missionPhase = 4; --- Desplaçament a Zona extracció presoners -----\\
// --- missionPhase = 5; --- Arribada a Zona extracció presoners ---------\\
// --- missionPhase = 6; --- Extracció presoners i bombardeig de la zona--\\
// --- missionPhase = 7; --- Bombardeig al camp de mines -----------------\\
// --- missionPhase = 8; --- Arribada a zona extracció jugadors ----------\\
// --- missionPhase = 9; --- Extracció jugadors --------------------------\\
// --- missionPhase = 10; -- Final Partida -------------------------------\\
// Si els objectius moren a la fase 4 la 5 i 6 no s'activen - Phase4-7.sqf\\
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
//------------DESACTIVA LA SIMULACIÓ DELS TRIGGERS D'ARTILLERIA-----------\\
//------------------------------------------------------------------------\\

trgM1 enableSimulationGlobal false;
trgM2 enableSimulationGlobal false;
trgM3 enableSimulationGlobal false;

trgM4 enableSimulationGlobal false;
trgM5 enableSimulationGlobal false;
trgM6 enableSimulationGlobal false;
trgM7 enableSimulationGlobal false;
trgM8 enableSimulationGlobal false;

trgM9 enableSimulationGlobal false;
trgM10 enableSimulationGlobal false;
trgM11 enableSimulationGlobal false;

trgM12 enableSimulationGlobal false;
trgM13 enableSimulationGlobal false;
trgM14 enableSimulationGlobal false;
trgM15 enableSimulationGlobal false;

trgM16 enableSimulationGlobal false;
trgM17 enableSimulationGlobal false;
trgM18 enableSimulationGlobal false;

trgHE1 enableSimulationGlobal false;
trgHE2 enableSimulationGlobal false;
trgHE3 enableSimulationGlobal false;
trgHE4 enableSimulationGlobal false;
trgHE5 enableSimulationGlobal false;
trgHE6 enableSimulationGlobal false;
trgHE7 enableSimulationGlobal false;
trgHE8 enableSimulationGlobal false;
trgHE9 enableSimulationGlobal false;

trgM19 enableSimulationGlobal false;
trgM20 enableSimulationGlobal false;
trgM21 enableSimulationGlobal false;
trgM22 enableSimulationGlobal false;
trgM23 enableSimulationGlobal false;
trgM24 enableSimulationGlobal false;
trgM25 enableSimulationGlobal false;

trgM26 enableSimulationGlobal false;
trgM27 enableSimulationGlobal false;
trgM28 enableSimulationGlobal false;
trgM29 enableSimulationGlobal false;
trgM30 enableSimulationGlobal false;
trgM31 enableSimulationGlobal false;
trgM32 enableSimulationGlobal false;
trgM33 enableSimulationGlobal false;

//------------------------------------------------------------------------\\
//----------------------INICIALITZAR UNITATS AL ZEUS----------------------\\
//------------------------------------------------------------------------\\

if ( isServer ) then {
	cc_script_zeus = [] execVM "scripts\zeus\zeusInit.sqf"
};

//------------------------------------------------------------------------\\
//----------------------------CONFIGURAR TFAR-----------------------------\\
//------------------------------------------------------------------------\\

radioScript = [] execVM "scripts\tfar\tfarConfig.sqf";

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\