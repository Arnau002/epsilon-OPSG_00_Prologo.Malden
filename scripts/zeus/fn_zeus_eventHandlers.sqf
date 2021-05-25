//=======================================================================================================//
// Arxiu: fn_zeus_eventHandlers.sqf                                                                      //
// Autor: Magnetar                                                                                       //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus les diferents unitats i objectes que altres    //
//             zeus afegeixin durant la partida per tal de que puguin ser editables.                     //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//=======================================================================================================//

{
	_x addEventHandler ["CuratorGroupPlaced",{[_this,"cc_fnc_zeus_afegirGrups",false] spawn BIS_fnc_MP}];
    _x addEventHandler ["CuratorObjectPlaced",{[_this,"cc_fnc_zeus_afegirObjectes",false] spawn BIS_fnc_MP}];
} forEach allCurators; 