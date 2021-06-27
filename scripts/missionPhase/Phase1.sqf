//========================================================================\\
// Arxiu: Phase1.sqf                                                      \\                
// Autor: Arnau002                                                        \\                              
// Versió: 0.3                                                            \\                               
// Creació del Document: 03/04/2020                                       \\                              
// Descripció: Inserció dels jugadors i teletransportar helicòpters de    \\
//             tornada al portaavions                                     \\
// Canvis: 0.1 (2020/04/03) Versió inicial.                               \\ 
//         0.2 (2020/11/05) Canviar l'assignació de jugadors als arrays   \\   
//         0.3 (2021/06/09) Adaptació del codi per poder ser executat     \\
//                          amb un trigger amb "Server Only"              \\   
//                          Engegar motors helicòpters uns segons abans   \\  
//                          Mostrar títol amb document extern (title.sqf) \\                           
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 1---------------------------------\\
//---------------------------Inserció Jugadors----------------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//------------------------------CREAR ARRAYS------------------------------\\
//------------------------------------------------------------------------\\

private _onHeli1 = [];
private _onHeli2 = [];
private _onHeli3 = [];

//------------------------------------------------------------------------\\
//--------ENGEGAR MOTORS HELICÒPTERS 1, 2, 3 I REPRODUIR GRABACIÓ---------\\
//------------------------------------------------------------------------\\

[hq, "Los helicopteros salen en 1 minuto"] remoteExec ["sideChat"];

sleep 30;

[hq, "30 segundos"] remoteExec ["sideChat"];

sleep 1;

heli1 engineOn true;

sleep 1;

heli2 engineOn true;

sleep 3;
 
heli3 engineOn true; 

sleep 15;

[heli1, "Mike Preparado"] remoteExec ["sideChat"];

sleep 3;

[heli2, "Sierra Preparado"] remoteExec ["sideChat"];

sleep 2;

[heli3, "Victor Preparado"] remoteExec ["sideChat"];

sleep 5;

rec = [] spawn wp_heli1_in; 
rec = [] spawn wp_heli2_in; 
rec = [] spawn wp_heli3_in;

//------------------------------------------------------------------------\\
//------------------------ASSIGNAR JUGADOR A ARRAY------------------------\\
//------------------------------------------------------------------------\\

_onHeli1 = (crew heli1);
_onHeli2 = (crew heli2);
_onHeli3 = (crew heli3);

//------------------------------------------------------------------------\\
//-----------------------------CREAR TASQUES------------------------------\\
//------------------------------------------------------------------------\\

[_onHeli1, ["tsk_in1"],"", [3870.201,7385.277,0], "ASSIGNED",-1, true, "heli"] 
call BIS_fnc_taskCreate;

[_onHeli2, ["tsk_in2"],"", [3533.947,7091.984,0], "ASSIGNED",-1, true, "heli"] 
call BIS_fnc_taskCreate;

[_onHeli3, ["tsk_in3"],"", [4466.727,5724.403,0], "ASSIGNED",-1, true, "heli"] 
call BIS_fnc_taskCreate;

//------------------------------------------------------------------------\\
//-----------------------------MOSTRAR TÍTOL------------------------------\\
//------------------------------------------------------------------------\\

sleep 13;

["scripts\title\title.sqf"] remoteExec ["execVM"];

//------------------------------------------------------------------------\\
//---------------------------REPRODUIR MUSICA-----------------------------\\
//------------------------------------------------------------------------\\

sleep 7.5;

["helimusic"] remoteExec ["playMusic"];

//------------------------------------------------------------------------\\
//----------------ELIMINAR UNITATS AMBIENTACIÓ PORTAAVIONS----------------\\
//------------------------------------------------------------------------\\

sleep 100;
deleteVehicle amb1;
deleteVehicle amb2;
deleteVehicle amb3;
deleteVehicle amb4;

//------------------------------------------------------------------------\\
//----------------COMPLETAR TASQUES I ASSIGNAR LA SEGÜENT-----------------\\
//------------------------------------------------------------------------\\

sleep 105;

["tsk_in1","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 5;
["tsk_in2","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 45;
["tsk_in3","SUCCEEDED"] call BIS_fnc_taskSetState;

sleep 10;

"tsk_capt" call BIS_fnc_taskSetCurrent; 

//------------------------------------------------------------------------\\
//-----------------------PASSAR A SEGÜENT FASE (2)------------------------\\
//------------------------------------------------------------------------\\

missionPhase = 2;

//------------------------------------------------------------------------\\
//----TELETRANSPORTAR HELICÒPTERS A LA POSICIÓ INICIAL I PARAR MOTORS-----\\
//------------------------------------------------------------------------\\

sleep 65;

heli1 setPosASL [-6324.961, 9732.482, 24]; 
heli2 setPosASL [-6323.215, 9679.819, 24];

sleep 5;

heli1 engineOn false; 
heli2 engineOn false; 

sleep 50;

heli3 setPosASL [-6324.431, 9767.504, 24];

sleep 5;

heli3 engineOn false; 

sleep 5;

heli1 setdir 130.651; 
heli2 setdir 118.144; 
heli3 setdir 116.567; 

//------------------------------------------------------------------------\\
//--------CANVIAR EL COMPORTAMENT DE UNITATS O L'OBJECTIU I VIGNY---------\\
//------------------------------------------------------------------------\\

aiobj1 setBehaviour "SAFE";

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\