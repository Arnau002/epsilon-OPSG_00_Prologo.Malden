//========================================================================\\
// Arxiu: obj_surrender2.sqf                                              \\                
// Autor: CE_Arnau002                                                     \\                              
// Versi�: 0.1                                                            \\                               
// Creaci� del Document: 10/04/2020                                       \\                              
// Descripci�: Activa "Set Captive" als Objectius de la Sala 2            \\
// Canvis: 0.1 (2020/04/10) Versi� inicial.                               \\   
// Canvis: 0.2 (2020/09/14) Eliminar call BIS_fnc_ambientAnim__terminate  \\                              
//========================================================================\\

//------------------------------------------------------------------------\\
//--------------------ES RENDEIXEN ELS OBJECTIUS 1 I 2--------------------\\
//------------------------------------------------------------------------\\

if (alive obj2) then {
[obj2, true] call ACE_captives_fnc_setSurrendered;
};

sleep 0.4;

if (alive obj1) then {
[obj1, true] call ACE_captives_fnc_setSurrendered;
};

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\