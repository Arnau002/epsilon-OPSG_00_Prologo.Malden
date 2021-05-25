//=======================================================================================================//
// Arxiu: fn_zeus_afegirObjectes.sqf                                                                     //
// Autor: Magnetar                                                                                       //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus els diferents objectes que altres zeus         //
//             afegeixen durant la partida per tal de que puguin ser editables.                          //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//=======================================================================================================//

// Surt si no és un servidor
if( !isServer ) exitWith{}; 

_zeus = _this select 0;
_nousObjectes = _this select 1;

{
	_x addCuratorEditableObjects [[_nousObjectes],true]
} forEach (allCurators - [_curator]);

//============================================ FI DEL FITXER ============================================//