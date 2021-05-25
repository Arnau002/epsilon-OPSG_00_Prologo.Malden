//========================================================================\\
// Arxiu: Phase7.sqf                                                      \\                
// Autor: CE_Arnau002                                                     \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 06/04/2020                                       \\                              
// Descripció: Bombardeig al camp de mines                                \\
// Canvis: 0.1 (2020/04/06) Versió inicial.                               \\ 
//         0.2 (2020/09/14) Creació de bengales amb createVehicleLocal    \\
//         0.3 (2020/11/03) Canvi de les variables target a global        \\
//                          Eliminació dels waitUntil                     \\
//                          Canvi trigg. d'artilleria pels de l'editor    \\
//                          Passar part del codi a Phase6.sqf:            \\ 
//                           -Eliminar triggers de control dels objectius \\ 
//                           -Assignar la següent tasca                   \\ 
//                           -Bombardejar zona extracció objectius        \\  
//                          Passar part del codi a Phase4-7.sqf:          \\
//                           -Fracassar tasca i assignar la següent       \\ 
//                          Eliminar passar a fase 8                      \\                                 
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 7---------------------------------\\
//----------------------Bombardeig al camp de mines-----------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//----------------------ESCOLLIR 3 JUGADORS ALEATORIS---------------------\\
//------------------------------------------------------------------------\\

target1 = playableUnits call BIS_fnc_selectRandom;
target2 = playableUnits call BIS_fnc_selectRandom;
target3 = playableUnits call BIS_fnc_selectRandom;

//------------------------------------------------------------------------\\
//---------------------------REPRODUIR MUSICA-----------------------------\\
//------------------------------------------------------------------------\\
 
 sleep 30;
 
playMusic "bombzonemusic";

//------------------------------------------------------------------------\\
//---------BOMBARDEJAR RUTA ZONA EXTRACCIÓ JUGADORS (CONTINUACIÓ)---------\\
//------------------------------------------------------------------------\\
//--------------------------Musica 010 (Bengales)-------------------------\\

sleep 8;
flr1 = "F_40mm_White" createVehicleLocal [1952,3876,300];
flr1 setVelocity [0,0,-1];
sleep 5;
flr2 = "F_40mm_White" createVehicleLocal [2401,4128,300];
flr2 setVelocity [0,0,-1];
sleep 5;
flr3 = "F_40mm_White" createVehicleLocal [2968,3812,300];
flr3 setVelocity [0,0,-1];
sleep 5;
flr4 = "F_40mm_White" createVehicleLocal [2832,3445,300];
flr4 setVelocity [0,0,-1];
sleep 5;
flr5 = "F_40mm_White" createVehicleLocal [2486,3608,300];
flr5 setVelocity [0,0,-1];
sleep 11;

//------------------------Musica 39 (Explosions 1)------------------------\\

[[2153, 4135, 0], "rhs_ammo_3vo18", 400, 12, 5] spawn BIS_fnc_fireSupportVirtual;
sleep 1;
[[3067, 3905, 0], "rhs_ammo_3vo18", 400, 9, 7] spawn BIS_fnc_fireSupportVirtual;
sleep 1;
trgM1 enableSimulationGlobal true;
sleep 2;
trgM2 enableSimulationGlobal true;
sleep 1;
trgM3 enableSimulationGlobal true;
sleep 40;
flr6 = "F_40mm_White" createVehicleLocal [2613,3063,250];
flr6 setVelocity [0,0,-1];
sleep 5;
flr7 = "F_40mm_White" createVehicleLocal [1991,3494,250];
flr7 setVelocity [0,0,-1];
sleep 1;

//------------------------Musica 51 (Explosions 2)------------------------\\

trgM4 enableSimulationGlobal true;
sleep 1;
trgM5 setPos (getPos target1);
trgM5 enableSimulationGlobal true;
sleep 1;
trgM6 enableSimulationGlobal true;
sleep 3;

flr8 = "F_40mm_White" createVehicleLocal [2216,2954,250];
flr8 setVelocity [0,0,-1];

trgM7 setPos (getPos target2);
trgM7 enableSimulationGlobal true;
sleep 2;
trgM8 enableSimulationGlobal true;

sleep 2;
flr9 = "F_40mm_White" createVehicleLocal [2609,3385,250];
flr9 setVelocity [0,0,-1];
sleep 4;
flr10 = "F_40mm_White" createVehicleLocal [2100,3183,250];
flr10 setVelocity [0,0,-1];
sleep 5;

//------------------------Musica 18 (Explosions 1)------------------------\\

trgM9 enableSimulationGlobal true;
sleep 1;
trgM10 enableSimulationGlobal true;
sleep 1;
trgM11 enableSimulationGlobal true;
sleep 29;

//------------------------Musica 31 (Explosions 2)------------------------\\

trgM12 enableSimulationGlobal true;
sleep 1;
trgM13 enableSimulationGlobal true;
sleep 1;
trgM14 enableSimulationGlobal true;
sleep 3;
trgM15 setPos (getPos target3);
trgM15 enableSimulationGlobal true;

sleep 9;
flr11 = "F_40mm_White" createVehicleLocal [2500,3114,200];
flr11 setVelocity [0,0,-1];
sleep 5;
flr12 = "F_40mm_White" createVehicleLocal [2203,2952,200];
flr12 setVelocity [0,0,-1];
sleep 5;
flr13 = "F_40mm_White" createVehicleLocal [1870,2797,200];
flr13 setVelocity [0,0,-1];
sleep 5;
flr14 = "F_40mm_White" createVehicleLocal [2033,3166,200];
flr14 setVelocity [0,0,-1];
sleep 5;
flr15 = "F_40mm_White" createVehicleLocal [2482,2813,200];
flr15 setVelocity [0,0,-1];
sleep 13;

//------------------------Musica 47 (Explosions 1)------------------------\\

trgM16 enableSimulationGlobal true;
sleep 1;
trgM17 enableSimulationGlobal true;
sleep 1;
trgM18 enableSimulationGlobal true;
sleep 22;

//------------------------Musica 24 (Explosions 3)------------------------\\

trgHE1 enableSimulationGlobal true;
sleep 1;
trgHE2 enableSimulationGlobal true;
sleep 1;
trgHE3 enableSimulationGlobal true;
sleep 1;
trgHE4 enableSimulationGlobal true;
sleep 1;
trgHE5 enableSimulationGlobal true;
sleep 1;
trgHE6 enableSimulationGlobal true;
sleep 1;
trgHE7 enableSimulationGlobal true;
sleep 1;
trgHE8 enableSimulationGlobal true;
sleep 1;
trgHE9 setPos (getPos target1);
trgHE9 enableSimulationGlobal true;
sleep 43;
flr16 = "F_40mm_White" createVehicleLocal [2228,3190,250];
flr16 setVelocity [0,0,-1];
sleep 4;
flr17 = "F_40mm_White" createVehicleLocal [2045,2922,250];
flr17 setVelocity [0,0,-1];
sleep 5;
flr18 = "F_40mm_White" createVehicleLocal [2354,2510,250];
flr18 setVelocity [0,0,-1];

//--------------------------Musica 60 (Bengales)--------------------------\\

sleep 5;
flr19 = "F_40mm_White" createVehicleLocal [1779,2724,250];
flr19 setVelocity [0,0,-1];
sleep 5;
flr20 = "F_40mm_White" createVehicleLocal [2404,2803,250];
flr20 setVelocity [0,0,-1];
sleep 5;
flr21 = "F_40mm_White" createVehicleLocal [2045,2425,250];
flr21 setVelocity [0,0,-1];
sleep 5;
flr22 = "F_40mm_White" createVehicleLocal [2061,2072,250];
flr22 setVelocity [0,0,-1];
sleep 5;
flr23 = "F_40mm_White" createVehicleLocal [1756,2247,250];
flr23 setVelocity [0,0,-1];
sleep 5;
flr24 = "F_40mm_White" createVehicleLocal [2335,2270,250];
flr24 setVelocity [0,0,-1];
sleep 5;
flr25 = "F_40mm_White" createVehicleLocal [1733,2527,250];
flr25 setVelocity [0,0,-1];

sleep 53;

flr26 = "F_40mm_White" createVehicleLocal [1970,2136,250];
flr26 setVelocity [0,0,-1];
sleep 2;




//------------------------Musica 90 (Explosions 1)------------------------\\

trgM19 enableSimulationGlobal true;
sleep 1;
trgM20 enableSimulationGlobal true;
sleep 1;
trgM21 enableSimulationGlobal true;
sleep 1;
trgM22 enableSimulationGlobal true;

flr27 = "F_40mm_White" createVehicleLocal [1962,2512,250];
flr27 setVelocity [0,0,-1];

sleep 1;
trgM23 setPos (getPos target1);
trgM23 enableSimulationGlobal true;
sleep 1;
trgM24 setPos (getPos target2);
trgM24 enableSimulationGlobal true;
sleep 1;
trgM25 setPos (getPos target3);
trgM25 enableSimulationGlobal true;
sleep 2;
flr28 = "F_40mm_White" createVehicleLocal [1704,2329,250];
flr28 setVelocity [0,0,-1];
sleep 5;
flr29 = "F_40mm_White" createVehicleLocal [2350,2462,250];
flr29 setVelocity [0,0,-1];
sleep 5;
flr30 = "F_40mm_White" createVehicleLocal [2236,2180,250];
flr30 setVelocity [0,0,-1];
sleep 12;

//------------------------Musica 30 (Explosions 2)------------------------\\

trgM26 enableSimulationGlobal true;
sleep 1;
trgM27 enableSimulationGlobal true;
sleep 1;
trgM28 enableSimulationGlobal true;
sleep 1;
trgM29 enableSimulationGlobal true;
sleep 1;
trgM30 enableSimulationGlobal true;
sleep 1;
trgM31 enableSimulationGlobal true;
sleep 1;
trgM32 enableSimulationGlobal true;
sleep 1;
trgM33 enableSimulationGlobal true;
sleep 8;

//--------------------------Musica 15 (Bengales)--------------------------\\

sleep 30;
flr31 = "F_40mm_White" createVehicleLocal [1882,2059,300];
flr31 setVelocity [0,0,-1];
sleep 5;
flr32 = "F_40mm_White" createVehicleLocal [1644,2210,300];
flr32 setVelocity [0,0,-1];
sleep 5;
flr33 = "F_40mm_White" createVehicleLocal [2174,2031,300];
flr33 setVelocity [0,0,-1];
sleep 5;
flr34 = "F_40mm_White" createVehicleLocal [1545,2370,300];
flr34 setVelocity [0,0,-1];
sleep 5;
flr35 = "F_40mm_White" createVehicleLocal [2481,2065,300];
flr35 setVelocity [0,0,-1];

//----------------------------Musica 50 (Final)---------------------------\\

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\