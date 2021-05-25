//========================================================================\\
// Arxiu: onPlayerKilled.sqf                                              \\                
// Autor: CE_Arnau002                                                     \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 13/04/2020                                       \\                              
// Descripció: Document que s'executa automàticament quan mor un jugador  \\
//            i activa el mode espectador per ell                         \\
// Canvis: 0.1 (2020/04/13) Versió inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------ACTIVAR ESPECTADOR---------------------------\\
//------------------------------------------------------------------------\\

["Initialize",[player,[west],false,false,true,true,false,false,true,true]] call BIS_fnc_EGSpectator;

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\