//========================================================================\\
// Arxiu: Phase6.sqf                                                      \\                
// Autor: Arnau002                                                        \\                              
// Versió: 0.4                                                            \\                               
// Creació del Document: 04/04/2020                                       \\                              
// Descripció: Extracció presoners, bombardeig de la zona i crear tasca   \\
// Canvis: 0.1 (2020/04/04) Versió inicial.                               \\
//         0.2 (2020/11/03) Rebre part del codi de Phase7.sqf:            \\
//                           -Eliminar triggers de control dels objectius \\ 
//                           -Assignar la següent tasca                   \\ 
//                           -Bombardejar zona extracció objectius        \\
//                          Eliminar passar a fase 7                      \\ 
//		   0.3 (2021/06/08) Canviar munició fum morter                    \\
//         0.4 (2021/06/27) Adaptació del codi per poder ser executat     \\
//                          amb un trigger amb "Server Only"              \\ 
//                          Canvi del temps en el que tarda en            \\
//                          caure l'artilleria                            \\
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 6---------------------------------\\
//---------Extracció presoners, bombardeig de la zona i crear tasca-------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//-------ESPERAR QUE ELS OBJECTIUS ESTIGUIN MORTS O A L'HELICÒPTER--------\\
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
//-------------ENGEGAR MOTOR HELICÒPTER 5 I REPRODUIR GRABACIÓ------------\\
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
//-----------------------ASSIGNAR LA SEGÜENT TASCA------------------------\\
//------------------------------------------------------------------------\\

sleep 10;

[true, ["tsk_mExtP"],"", [1050.875,674.979,0], "ASSIGNED",-1, true, "walk"] 
call BIS_fnc_taskCreate;

//------------------------------------------------------------------------\\
//--------------ELIMINAR TRIGGERS DE CONTROL DELS OBJECTIUS---------------\\
//------------------------------------------------------------------------\\

deleteVehicle all_obj_dead;
deleteVehicle obj_dead;

//------------------------------------------------------------------------\\
//-------------------MOSTRAR MISSATGE DE L'HELICÒPTER---------------------\\
//------------------------------------------------------------------------\\
 
sleep 10; 
 
[heli5, "Vemos una columna de vehiculos dirigiendose a vuestra posicion"] remoteExec ["sideChat"];

//------------------------------------------------------------------------\\
//------------------BOMBARDEJAR ZONA EXTRACCIÓ OBJECTIUS------------------\\
//------------------------------------------------------------------------\\

sleep 15; 

[[3793, 4933, 0], "Smoke_82mm_AMOS_White", 50, 5, 3] spawn BIS_fnc_fireSupportVirtual;

sleep 40; 

[[3793, 4933, 0], "rhs_ammo_3vo18", 50, 10, 2] spawn BIS_fnc_fireSupportVirtual;

//-------------------------------------------------------------------------\\
//-------------------------ELIMINAR HELICÒPTER 5---------------------------\\
//-------------------------------------------------------------------------\\
 
 sleep 35; 

 {deleteVehicle _x} forEach crew (heli5) + [heli5]
 
//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\