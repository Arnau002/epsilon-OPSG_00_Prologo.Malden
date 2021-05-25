//========================================================================\\
// Arxiu: Phase7.sqf                                                      \\                
// Autor: CE_Arnau002                                                     \\                              
// Versió: 0.1                                                            \\                               
// Creació del Document: 06/04/2020                                       \\                              
// Descripció: Creació tasca extracció jugadors i posterior bombardeig    \\
// Canvis: 0.1 (2020/04/06) Versió inicial.                               \\                               
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 7---------------------------------\\
//-----------------Desplaçament a zona extracció jugadors-----------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//--------------ELIMINAR TRIGGERS DE CONTROL DELS OBJECTIUS---------------\\
//------------------------------------------------------------------------\\

deleteVehicle obj1death;
deleteVehicle obj2death;
deleteVehicle obj3death;
deleteVehicle obj4death;
deleteVehicle obj5death;
deleteVehicle obj6death;


//------------------------------------------------------------------------\\
//--------------SEPARAR ENTRE FINAL ESTÀNDARD O ALTERNATIU----------------\\
//------------------------------------------------------------------------\\
//--------------------------- FINAL ESTÀNDARD-----------------------------\\
//------------------------------------------------------------------------\\

if (triggerActivated phase6) then { 
 
//------------------------------------------------------------------------\\
//-----------------------ASSIGNAR LA SEGÜENT TASCA------------------------\\
//------------------------------------------------------------------------\\
 
 [true, ["tsk_mExtP"],"", [1050.875,674.979,0], "ASSIGNED",-1, true, "walk"] 
call BIS_fnc_taskCreate;

waitUntil {triggerActivated bomb_extO};

//------------------------------------------------------------------------\\
//---------------------ELIMINAR RADIO (MÚSICA PIANO)----------------------\\
//------------------------------------------------------------------------\\

deleteVehicle radio;

//------------------------------------------------------------------------\\
//------------------BOMBARDEJAR ZONA EXTRACCIÓ OBJECTIUS------------------\\
//------------------------------------------------------------------------\\

[[3793, 4933, 0], "rhs_ammo_d832du", 50, 5, 3] spawn BIS_fnc_fireSupportVirtual;
sleep 15;
[[3793, 4933, 0], "rhs_ammo_3vo18", 50, 10, 2] spawn BIS_fnc_fireSupportVirtual;
} 
 
//------------------------------------------------------------------------\\
//--------------------------- FINAL ALTERNATIU-----------------------------\\
//------------------------------------------------------------------------\\
 
 else { 
   
//------------------------------------------------------------------------\\
//-----------------COMPLETAR TASCA I ASSIGNAR LA SEGÜENT------------------\\
//------------------------------------------------------------------------\\
 
 ["tsk_extO","FAILED"] call BIS_fnc_taskSetState;
 
 sleep 10;
 
 [true, ["tsk_mExtPAlt"],"", [1050.875,674.979,0], "ASSIGNED",-1, true, "walk"] 
call BIS_fnc_taskCreate;
};

//------------------------------------------------------------------------\\
//--------BOMBARDEJAR RUTA ZONA EXTRACCIÓ JUGADORS (CODI COMPARTIT)-------\\
//------------------------------------------------------------------------\\

waitUntil {triggerActivated bomb_zone};

//----------------------Escollir 3 Jugadors aleatoris---------------------\\

_target1 = playableUnits call BIS_fnc_selectRandom;
_target2 = playableUnits call BIS_fnc_selectRandom;
_target3 = playableUnits call BIS_fnc_selectRandom;

arty1 doArtilleryFire[[1952,3876], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2401,4128], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2968,3812], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2832,3445], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2486,3608], "rhs_mag_3vs25m_10", 1]; 
//------------------------------------------------------------------------\\
//---------------------------REPRODUIR MUSICA-----------------------------\\
//------------------------------------------------------------------------\\
 
 sleep 10;
 
playMusic "bombzonemusic";

//------------------------------------------------------------------------\\
//---------BOMBARDEJAR RUTA ZONA EXTRACCIÓ JUGADORS (CONTINUACIÓ)---------\\
//------------------------------------------------------------------------\\
//--------------------------Musica 010 (Bengales)-------------------------\\

sleep 39;

//------------------------Musica 39 (Explosions 1)------------------------\\

[[2153, 4135, 0], "rhs_ammo_3vo18", 400, 12, 5] spawn BIS_fnc_fireSupportVirtual;
sleep 1;
[[3067, 3905, 0], "rhs_ammo_3vo18", 400, 9, 7] spawn BIS_fnc_fireSupportVirtual;
sleep 1;
_trgM1 = createTrigger ["EmptyDetector", [1950,3729]];
_trgM1 setTriggerArea [400, 400, 0, false];
_trgM1 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 7, 7] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 2;
_trgM2 = createTrigger ["EmptyDetector", [2927,3541]];
_trgM2 setTriggerArea [400, 400, 0, false];
_trgM2 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 11, 4] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM3 = createTrigger ["EmptyDetector", [2412,3722]];
_trgM3 setTriggerArea [350, 350, 0, false];
_trgM3 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 250, 8, 5] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 5;
arty1 doArtilleryFire[[2613,3063], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1991,3494], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2216,2954], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2609,3385], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2100,3183], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 setVehicleAmmo 1;
sleep 16;

//------------------------Musica 51 (Explosions 2)------------------------\\

_trgM4 = createTrigger ["EmptyDetector", [2723,3232]];
_trgM4 setTriggerArea [300, 300, 0, false];
_trgM4 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 200, 6, 3] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM5 = createTrigger ["EmptyDetector", getPos _target1];
_trgM5 setTriggerArea [120, 120, 0, false];
_trgM5 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM6 = createTrigger ["EmptyDetector", [1989,3455]];
_trgM6 setTriggerArea [300, 300, 0, false];
_trgM6 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 200, 5, 4] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 3;
_trgM7 = createTrigger ["EmptyDetector", getPos _target2];
_trgM7 setTriggerArea [120, 120, 0, false];
_trgM7 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 2;
_trgM8 = createTrigger ["EmptyDetector", [2407,3497]];
_trgM8 setTriggerArea [120, 120, 0, false];
_trgM8 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 11;

//------------------------Musica 18 (Explosions 1)------------------------\\

_trgM9 = createTrigger ["EmptyDetector", [1984,3416]];
_trgM9 setTriggerArea [400, 400, 0, false];
_trgM9 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 6, 5] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM10 = createTrigger ["EmptyDetector", [2724,3197]];
_trgM10 setTriggerArea [400, 400, 0, false];
_trgM10 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 8, 4] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM11 = createTrigger ["EmptyDetector", [2390,3410]];
_trgM11 setTriggerArea [250, 250, 0, false];
_trgM11 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 150, 3, 10] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 5;
arty1 doArtilleryFire[[2500,3114], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2203,2952], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1870,2797], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2033,3166], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2482,2813], "rhs_mag_3vs25m_10", 1]; 
sleep 4;

//------------------------Musica 31 (Explosions 2)------------------------\\

_trgM12 = createTrigger ["EmptyDetector", [2591,3028]];
_trgM12 setTriggerArea [300, 300, 0, false];
_trgM12 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 200, 12, 4] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM13 = createTrigger ["EmptyDetector", [1925,3176]];
_trgM13 setTriggerArea [300, 300, 0, false];
_trgM13 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 200, 9, 5] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM14 = createTrigger ["EmptyDetector", [2348,3280]];
_trgM14 setTriggerArea [250, 250, 0, false];
_trgM14 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 150, 7, 7] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 3;
_trgM15 = createTrigger ["EmptyDetector", getPos _target3];
_trgM15 setTriggerArea [120, 120, 0, false];
_trgM15 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 42;

//------------------------Musica 47 (Explosions 1)------------------------\\

_trgM16 = createTrigger ["EmptyDetector", [1809,3115]];
_trgM16 setTriggerArea [400, 400, 0, false];
_trgM16 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 5, 5] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM17 = createTrigger ["EmptyDetector", [2639,2956]];
_trgM17 setTriggerArea [400, 400, 0, false];
_trgM17 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 3, 8] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM18 = createTrigger ["EmptyDetector", [2276,3152]];
_trgM18 setTriggerArea [250, 250, 0, false];
_trgM18 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 150, 4, 6] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 22;

//------------------------Musica 24 (Explosions 3)------------------------\\

_trgHE1 = createTrigger ["EmptyDetector", [2154,2564]];
_trgHE1 setTriggerArea [120, 120, 0, false];
_trgHE1 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE2 = createTrigger ["EmptyDetector", [2332,2638]];
_trgHE2 setTriggerArea [150, 150, 0, false];
_trgHE2 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 10, 5, 10] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE3 = createTrigger ["EmptyDetector", [2061,2940]];
_trgHE3 setTriggerArea [120, 120, 0, false];
_trgHE3 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 5, 6, 8] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE4 = createTrigger ["EmptyDetector", [1981,2747]];
_trgHE4 setTriggerArea [150, 150, 0, false];
_trgHE4 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 10, 2, 25] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE5 = createTrigger ["EmptyDetector", [2349,2822]];
_trgHE5 setTriggerArea [120, 120, 0, false];
_trgHE5 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 3, 5, 10] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE6 = createTrigger ["EmptyDetector", [2254,2968]];
_trgHE6 setTriggerArea [120, 120, 0, false];
_trgHE6 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 2, 3, 15] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE7 = createTrigger ["EmptyDetector", [1805,2890]];
_trgHE7 setTriggerArea [300, 300, 0, false];
_trgHE7 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 90, 5, 8] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE8 = createTrigger ["EmptyDetector", [2521,2677]];
_trgHE8 setTriggerArea [300, 300, 0, false];
_trgHE8 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 100, 5, 9] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgHE9 = createTrigger ["EmptyDetector", getPos _target1];
_trgHE9 setTriggerArea [120, 120, 0, false];
_trgHE9 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3of56"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 5;
arty1 doArtilleryFire[[2228,3190], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2045,2922], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2354,2510], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1779,2724], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2404,2803], "rhs_mag_3vs25m_10", 1]; 
sleep 1;
arty1 setVehicleAmmo 1;
sleep 1;
arty1 doArtilleryFire[[2045,2425], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2061,2072], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1756,2247], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2335,2270], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1733,2527], "rhs_mag_3vs25m_10", 1]; 
sleep 5;

//--------------------------Musica 60 (Bengales)--------------------------\\

sleep 50;

arty1 doArtilleryFire[[1970,2136], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1962,2512], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1704,2329], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2350,2462], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2236,2180], "rhs_mag_3vs25m_10", 1]; 
sleep 1;
arty1 setVehicleAmmo 1;

sleep 19;

//------------------------Musica 90 (Explosions 1)------------------------\\

_trgM19 = createTrigger ["EmptyDetector", [1728,2556]];
_trgM19 setTriggerArea [300, 300, 0, false];
_trgM19 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 5, 8] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM20 = createTrigger ["EmptyDetector", [2306,2058]];
_trgM20 setTriggerArea [300, 300, 0, false];
_trgM20 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 300, 5, 7] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM21 = createTrigger ["EmptyDetector", [1656,2262]];
_trgM21 setTriggerArea [300, 300, 0, false];
_trgM21 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 150, 6, 5] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM22 = createTrigger ["EmptyDetector", [2358,2366]];
_trgM22 setTriggerArea [300, 300, 0, false];
_trgM22 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 150, 5, 6] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM23 = createTrigger ["EmptyDetector", getPos _target1];
_trgM23 setTriggerArea [110, 110, 0, false];
_trgM23 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM24 = createTrigger ["EmptyDetector", getPos _target2];
_trgM24 setTriggerArea [100, 100, 0, false];
_trgM24 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM25 = createTrigger ["EmptyDetector", getPos _target3];
_trgM25 setTriggerArea [120, 120, 0, false];
_trgM25 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 24;

//------------------------Musica 30 (Explosions 2)------------------------\\

_trgM26 = createTrigger ["EmptyDetector", [2164,2199]];
_trgM26 setTriggerArea [100, 100, 0, false];
_trgM26 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM27 = createTrigger ["EmptyDetector", [2094,2098]];
_trgM27 setTriggerArea [100, 100, 0, false];
_trgM27 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM28 = createTrigger ["EmptyDetector", [1881,2356]];
_trgM28 setTriggerArea [100, 100, 0, false];
_trgM28 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM29 = createTrigger ["EmptyDetector", [1879,2221]];
_trgM29 setTriggerArea [100, 100, 0, false];
_trgM29 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM30 = createTrigger ["EmptyDetector", [2146,2340]];
_trgM30 setTriggerArea [100, 100, 0, false];
_trgM30 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM31 = createTrigger ["EmptyDetector", [1897,2291]];
_trgM31 setTriggerArea [100, 100, 0, false];
_trgM31 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM32 = createTrigger ["EmptyDetector", [2134,2259]];
_trgM32 setTriggerArea [100, 100, 0, false];
_trgM32 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 1;
_trgM33 = createTrigger ["EmptyDetector", [1877,2167]];
_trgM33 setTriggerArea [100, 100, 0, false];
_trgM33 setTriggerStatements ["({_x inArea thisTrigger} count allPlayers) == 0", "[getpos thisTrigger, ""rhs_ammo_3vo18"", 1, 1, 1] spawn BIS_fnc_fireSupportVirtual; deletevehicle thisTrigger;" ,""];
sleep 3;
arty1 doArtilleryFire[[1882,2059], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1644,2210], "rhs_mag_3vs25m_10", 1]; 


//--------------------------Musica 15 (Bengales)--------------------------\\

sleep 5;
arty1 doArtilleryFire[[2174,2031], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[1545,2370], "rhs_mag_3vs25m_10", 1]; 
sleep 5;
arty1 doArtilleryFire[[2481,2065], "rhs_mag_3vs25m_10", 1];

//----------------------------Musica 15 (Final)---------------------------\\

//------------------------------------------------------------------------\\
//-----------------------PASSAR A SEGÜENT FASE (8)------------------------\\
//------------------------------------------------------------------------\\

waitUntil {triggerActivated phase7_8};

missionPhase = 8;

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\