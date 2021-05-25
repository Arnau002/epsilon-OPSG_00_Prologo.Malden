//========================================================================\\
// Arxiu: endMission.sqf                                                  \\                               
// Autor: CE_Arnau002                                                     \\                               
// Versió: 0.1                                                            \\                               
// Creació del Document: 07/04/2020                                       \\                               
//========================================================================\\




if (({alive _x} count playableUnits == 0) && missionPhase == 0) then {
    playMusic "defeatmusic";
	["PlayDead1",false,15] call BIS_fnc_endMission;
};

if (({alive _x} count playableUnits == 0) && missionPhase >= 1) then {
    playMusic "defeatmusic";
	["PlayDead2",false,15] call BIS_fnc_endMission;
};

if (objAlive == 0 && missionPhase <= 3) then {
     playMusic "defeatmusic";
	["ObjDead",false,15] call BIS_fnc_endMission;
};

if (objAlive == 2 &&({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    playMusic "victorymusic";
	["PlayAlive_6",false,15] call BIS_fnc_endMission;
};

if (objAlive == 1 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
     playMusic "victorymusic";
	["PlayAlive_1",false,15] call BIS_fnc_endMission;
};

if (objAlive == 0 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    playMusic "victorymusic";
	["PlayAlive_0",false,15] call BIS_fnc_endMission;
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\