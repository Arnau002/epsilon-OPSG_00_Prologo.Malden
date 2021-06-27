//========================================================================\\
// Arxiu: endMission.sqf                                                  \\                               
// Autor: Arnau002                                                        \\                               
// Versi�: 0.2                                                            \\                               
// Creaci� del Document: 07/04/2020                                       \\ 
// Descripci�: Selecci� del final de missi�                               \\  
// Canvis: 0.1 (2020/04/07) Versi� inicial.                               \\  
//         0.2 (2021/06/08) Adaptaci� del codi per poder ser executat     \\
//                          amb un trigger amb "Server Only"              \\                            
//========================================================================\\

if (({alive _x} count playableUnits == 0) && missionPhase == 0) then {
    ["defeatmusic"] remoteExec ["playMusic"];
	["PlayDead1",false,15] remoteExec ["BIS_fnc_endMission"];
};

if (({alive _x} count playableUnits == 0) && missionPhase >= 1) then {
    ["defeatmusic"] remoteExec ["playMusic"];
	["PlayDead2",false,15] remoteExec ["BIS_fnc_endMission"];
};

if (objAlive == 0 && missionPhase <= 3) then {
     ["defeatmusic"] remoteExec ["playMusic"];
	["ObjDead",false,15] remoteExec ["BIS_fnc_endMission"];
};

if (objAlive == 2 &&({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    ["victorymusic"] remoteExec ["playMusic"];
	["PlayAlive_6",false,15] remoteExec ["BIS_fnc_endMission"];
};

if (objAlive == 1 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    ["victorymusic"] remoteExec ["playMusic"];
	["PlayAlive_1",false,15] remoteExec ["BIS_fnc_endMission"];
};

if (objAlive == 0 && ({alive _x} count playableUnits >= 1) && missionPhase == 10) then {
    ["victorymusic"] remoteExec ["playMusic"];
	["PlayAlive_0",false,15] remoteExec ["BIS_fnc_endMission"];
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\