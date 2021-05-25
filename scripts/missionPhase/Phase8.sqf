//========================================================================\\
// Arxiu: Phase8.sqf                                                      \\                
// Autor: CE_Arnau002                                                     \\                              
// Versi�: 0.1                                                            \\                               
// Creaci� del Document: 08/04/2020                                       \\                              
// Descripci�: Entrada helic�pters 1, 2 i 3 per extreure Jugadors         \\
// Canvis: 0.1 (2020/04/08) Versi� inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 8---------------------------------\\
//-------------------Arribada a zona extracci� jugadors-------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//-------------------MOSTRAR MISSATGE DE L'HELIC�PTER---------------------\\
//------------------------------------------------------------------------\\

hq sidechat "Acaban de salir los helicopteros, llegaran en pocos minutos";


//------------------------------------------------------------------------\\
//----------------COMPLETAR TASQUES I ASSIGNAR LA SEG�ENT-----------------\\
//------------------------------------------------------------------------\\

waitUntil {triggerActivated play_on_ext};

if (triggerActivated phase6) then {["tsk_mExtP","SUCCEEDED"] call BIS_fnc_taskSetState;}

//------------------------------------------------------------------------\\
//---------------------------TASCA ALTERNATIVA----------------------------\\
//------------------------------------------------------------------------\\
 
 else {["tsk_mExtPAlt","SUCCEEDED"] call BIS_fnc_taskSetState;};

 //------------------------------------------------------------------------\\
//-----------------------ASSIGNAR LA SEG�ENT TASCA------------------------\\
//------------------------------------------------------------------------\\

 sleep 5;

[true, ["tsk_extP"],"", [9400,79,0], "ASSIGNED",-1, true, "heli"] 
call BIS_fnc_taskCreate;
 
 //------------------------------------------------------------------------\\
//--------ENGEGAR MOTORS HELIC�PTERS 1, 2, 3 I REPRODUIR GRABACI�---------\\
//------------------------------------------------------------------------\\
 
heli1 engineOn true; 
heli2 engineOn true; 
heli3 engineOn true; 

sleep 15;

rec = [] spawn wp_heli1_inLh;
 
sleep 1;

rec = [] spawn wp_heli2_inLh;

sleep 1; 

rec = [] spawn wp_heli3_inLh; 

//------------------------------------------------------------------------\\
//-------------------PARAR MOTORS HELIC�PTERS 1, 2 I 3--------------------\\
//------------------------------------------------------------------------\\

sleep 118;

heli1 engineOn false; 

sleep 10;

heli2 engineOn false;
 
sleep 6;

heli3 engineOn false; 

//------------------------------------------------------------------------\\
//-------------------MOSTRAR MISSATGE DE L'HELIC�PTER---------------------\\
//------------------------------------------------------------------------\\

heli1 sidechat "Subid a los helicopteros, salimos en 15 segundos";

//------------------------------------------------------------------------\\
//-----------------------PASSAR A SEG�ENT FASE (9)------------------------\\
//------------------------------------------------------------------------\\

sleep 15;


missionPhase = 9;

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\