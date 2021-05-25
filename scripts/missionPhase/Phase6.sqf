//========================================================================\\
// Arxiu: Phase6.sqf                                                      \\                
// Autor: CE_Arnau002                                                     \\                              
// Versi�: 0.1                                                            \\                               
// Creaci� del Document: 04/04/2020                                       \\                              
// Descripci�: Extracci� de Presoners en helic�pter 5                     \\
// Canvis: 0.1 (2020/04/04) Versi� inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 6---------------------------------\\
//---------------------------Extracci� presoners--------------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//-------ESPERAR QUE ELS OBJECTIUS ESTIGUIN MORTS O A L'HELIC�PTER--------\\
//------------------------------------------------------------------------\\
 
waitUntil {!alive obj1 || obj1 in heli5};
waitUntil {!alive obj2 || obj2 in heli5};
waitUntil {!alive obj3 || obj3 in heli5};
waitUntil {!alive obj4 || obj4 in heli5};
waitUntil {!alive obj5 || obj5 in heli5};
waitUntil {!alive obj6 || obj6 in heli5};

//------------------------------------------------------------------------\\
//----------------------COMPLETAR O FRACASSAR TASCA-----------------------\\
//------------------------------------------------------------------------\\

sleep 5;

if (objAlive == 0) then {["tsk_extO","FAILED"] call BIS_fnc_taskSetState;};
 
if (objAlive >= 1) then {["tsk_extO","SUCCEEDED"] call BIS_fnc_taskSetState;};
  
//------------------------------------------------------------------------\\
//-------------ENGEGAR MOTOR HELIC�PTER 5 I REPRODUIR GRABACI�------------\\
//------------------------------------------------------------------------\\

heli5 engineOn true;

sleep 15;

 rec = [] spawn wp_heli5_out; 
 
 
//------------------------------------------------------------------------\\
//-----------EVITAR QUE EL OBJECTIUS PUGUIN MORIR SI ESTAN VIUS-----------\\
//------------------------------------------------------------------------\\
 
sleep 5;
 
if (alive obj1) then {obj1 allowDamage false;};
if (alive obj2) then {obj2 allowDamage false;};
if (alive obj3) then {obj3 allowDamage false;};
if (alive obj4) then {obj4 allowDamage false;};
if (alive obj5) then {obj5 allowDamage false;};
if (alive obj6) then {obj6 allowDamage false;};

//------------------------------------------------------------------------\\
//-----------------------PASSAR A SEG�ENT FASE (7)------------------------\\
//------------------------------------------------------------------------\\

sleep 10;

missionPhase = 7;

//------------------------------------------------------------------------\\
//-------------------MOSTRAR MISSATGE DE L'HELIC�PTER---------------------\\
//------------------------------------------------------------------------\\
 
 sleep 10;
 
heli5 sidechat "Vemos una columna de vehiculos dirigiendose a vuestra posicion";

//-------------------------------------------------------------------------\\
//-------------------------ELIMINAR HELIC�PTER 5---------------------------\\
//-------------------------------------------------------------------------\\
 
 sleep 90;

 {deleteVehicle _x} forEach crew (heli5) + [heli5]
 
//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\