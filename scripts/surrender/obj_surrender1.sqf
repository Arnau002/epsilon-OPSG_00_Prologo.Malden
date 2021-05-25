//========================================================================\\
// Arxiu: obj_surrender1.sqf                                              \\                
// Autor: CE_Arnau002                                                     \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 10/04/2020                                       \\                              
// Descripció: Activa "Set Captive" als Objectius de la Sala 1            \\
// Canvis: 0.1 (2020/04/10) Versió inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//-----------------ES RENDEIXEN ELS OBJECTIUS 3, 4, 5, I 6----------------\\
//------------------------------------------------------------------------\\

if (alive obj4) then {
obj4 call BIS_fnc_ambientAnim__terminate;
[obj4, true] call ACE_captives_fnc_setSurrendered;
};

sleep 0.4;

if (alive obj3) then {
obj3 call BIS_fnc_ambientAnim__terminate;
[obj3, true] call ACE_captives_fnc_setSurrendered;
};

sleep 0.5;

if (alive obj5) then {
obj5 call BIS_fnc_ambientAnim__terminate;
[obj5, true] call ACE_captives_fnc_setSurrendered;
obj5 setPosATL [4303.832, 6834.046, 3.841];
};

sleep 0.6;

if (alive obj6) then {
obj6 call BIS_fnc_ambientAnim__terminate;
[obj6, true] call ACE_captives_fnc_setSurrendered;
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\