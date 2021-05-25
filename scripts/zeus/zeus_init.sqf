//=======================================================================================================//
// Arxiu: zeus_init.sqf                                                                                  //
// Autor: Magnetar                                                                                       //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus els diferents objectes, vehicles, i unitats    //
//             que s'han posat utilitzant l'editor. Els jugadors també estan inclosos. D'aquesta manera  //
//             tots aquests els objectes seran editables.                                                //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//=======================================================================================================//

// Surt si no és un servidor
if( !isServer ) exitWith{}; 

// Afegir les unitats, vehicles i objectes a tots els zeus. 
{
	_x addCuratorEditableObjects [vehicles,true];                     // Afegeix els vehicles amb la tripulació
	_x addCuratorEditableObjects [(allMissionObjects "Man"),false];   // Afegeix les unitats d'infanteria
	_x addCuratorEditableObjects [(allMissionObjects "Air"),true];    // Afegeix les unitats aèries amb la tripulació
	_x addCuratorEditableObjects [(allMissionObjects "Ammo"),false];  // Afegeix els objectes de tipus "Ammo"
	_x addCuratorEditableObjects [[player], true];                    // Afegeix el jugador en si.
} forEach allCurators;

//============================================ FI DEL FITXER ============================================//