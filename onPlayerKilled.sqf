//========================================================================\\
// Arxiu: onPlayerKilled.sqf                                              \\                
// Autor: CE_Arnau002                                                     \\                              
// Versi�: 0.1                                                            \\                               
// Creaci� del Document: 13/04/2020                                       \\                              
// Descripci�: Document que s'executa autom�ticament quan mor un jugador  \\
//            i activa el mode espectador per ell                         \\
// Canvis: 0.1 (2020/04/13) Versi� inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------ACTIVAR ESPECTADOR---------------------------\\
//------------------------------------------------------------------------\\

["Initialize",[player,[west],false,false,true,true,false,false,true,true]] call BIS_fnc_EGSpectator;

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\