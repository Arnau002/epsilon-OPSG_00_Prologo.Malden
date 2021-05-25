//========================================================================\\
// Arxiu: endMission.sqf                                                  \\                               
// Autor: CE_Arnau002                                                     \\                               
// Versi�: 0.1                                                            \\                               
// Creaci� del Document: 07/04/2020                                       \\                               
//========================================================================\\




if (missionPhase == 0 && ({alive _x} count playableUnits == 0)) then {
    playMusic "defeatmusic";
	["PlayDead1",false,15] call BIS_fnc_endMission;
};

if (missionPhase >= 1 && ({alive _x} count playableUnits == 0)) then {
    playMusic "defeatmusic";
	["PlayDead2",false,15] call BIS_fnc_endMission;
};

if (objAlive == 0 && missionPhase <= 3) then {
     playMusic "defeatmusic";
	["ObjDead",false,15] call BIS_fnc_endMission;
};

if (objAlive == 6 &&({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    playMusic "victorymusic";
	["PlayAlive_6",false,15] call BIS_fnc_endMission;
};

if (objAlive >= 1 && objAlive <=5 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
     playMusic "victorymusic";
	["PlayAlive_1",false,15] call BIS_fnc_endMission;
};

if (objAlive == 0 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    playMusic "victorymusic";
	["PlayAlive_0",false,15] call BIS_fnc_endMission;
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\