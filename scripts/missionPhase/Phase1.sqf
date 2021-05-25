//========================================================================\\
// Arxiu: Phase1.sqf                                                      \\                
// Autor: CE_Arnau002                                                     \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 03/04/2020                                       \\                              
// Descripció: Inserció dels jugadors i teletransportar helicòpters de    \\
//             tornada al portaavions                                     \\
// Canvis: 0.1 (2020/04/03) Versió inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 1---------------------------------\\
//---------------------------Inserció Jugadors----------------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//------------------------------CREAR ARRAY-------------------------------\\
//------------------------------------------------------------------------\\

private _onHeli1 = [];
private _onHeli2 = [];
private _onHeli3 = [];

//------------------------------------------------------------------------\\
//--------ENGEGAR MOTORS HELICÒPTERS 1, 2, 3 I REPRODUIR GRABACIÓ---------\\
//------------------------------------------------------------------------\\

hq sidechat "Los helicopteros salen en 1 minuto";

sleep 30;

hq sidechat "30 segundos";

sleep 10;

heli1 engineOn true; 

sleep 1;

heli2 engineOn true;

sleep 4;
 
heli3 engineOn true; 

sleep 5;

heli1 sidechat "Mike Preparado";

sleep 3;

heli2 sidechat "Sierra Preparado";

sleep 2;

heli3 sidechat "Victor Preparado";

sleep 5;

rec = [] spawn wp_heli1_in; 
rec = [] spawn wp_heli2_in; 
rec = [] spawn wp_heli3_in;

//------------------------------------------------------------------------\\
//------------------------ASSIGNAR JUGADOR A ARRAY------------------------\\
//------------------------------------------------------------------------\\

call {
	if (player in heli1) exitWith
	{
		_onHeli1 pushBack player;
	};
	if (player in heli2) exitWith
	{
		_onHeli2 pushBack player;
	};
	if (player in heli3) exitWith
	{
		_onHeli3 pushBack player;
	};
};

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

[
		[
			["Operation Shield Gate","<t color = '#FFFFFF' align = 'right' shadow = '1' size = '1.2'>%1</t><br/>"],
			[([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString) + " " + str(date select 2) + "." + str(date select 1) + "." + str(date select 0),"<t color = '#FCFCFC' align = 'right' shadow = '1' size = '1.0'>%1</t><br/>"],
			["Oeste de Malden","<t color = '#FAFAFA' align = 'right' shadow = '1' size = '1.0'>%1</t>"]
		],-safeZoneX,-safeZoneY
] spawn BIS_fnc_typeText; 


//------------------------------------------------------------------------\\
//---------------------------REPRODUIR MUSICA-----------------------------\\
//------------------------------------------------------------------------\\

sleep 7.5;

playMusic "helimusic";


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