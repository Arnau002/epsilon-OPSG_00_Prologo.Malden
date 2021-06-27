//========================================================================\\
// Arxiu: Phase9.sqf                                                      \\                
// Autor: Arnau002                                                        \\                              
// Versió: 0.2                                                            \\                               
// Creació del Document: 08/04/2020                                       \\                              
// Descripció: Extracció jugadors i bombardeig americà de l'illa          \\
// Canvis: 0.1 (2020/04/08) Versió inicial.                               \\
//         0.2 (2021/06/08) Adaptacio del codi per poder ser executat     \\
//                          amb un trigger ammb "Server Only"             \\                                 
//========================================================================\\

//------------------------------------------------------------------------\\
//---------------------------------FASE 9---------------------------------\\
//---------------------------Extracció jugadors---------------------------\\
//------------------------------------------------------------------------\\

//------------------------------------------------------------------------\\
//---------------------------REPRODUIR MUSICA-----------------------------\\
//------------------------------------------------------------------------\\

["extractionmusic"] remoteExec ["playMusic"];

//------------------------------------------------------------------------\\
//--------ENGEGAR MOTORS HELICÒPTERS 1, 2, 3 I REPRODUIR GRABACIÓ---------\\
//------------------------------------------------------------------------\\

heli1 engineOn true; 
heli2 engineOn true; 
heli3 engineOn true; 

rec = [] spawn wp_heli1_outLh;
rec = [] spawn wp_heli2_outLh;
rec = [] spawn wp_heli3_outLh;

//------------------------------------------------------------------------\\
//--------------------------BOMBARDEIG AMERICÀ----------------------------\\
//------------------------------------------------------------------------\\

sleep 75;

ham1 doArtilleryFire[[5013,1897], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 2;
ham3 doArtilleryFire[[5752,2470], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham4 doArtilleryFire[[8435,3810], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 2;
ham2 doArtilleryFire[[7782,3311], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 10;


ham1 doArtilleryFire[[7651,3680], "magazine_ShipCannon_120mm_HE_shells_x32",1];
ham3 doArtilleryFire[[9731,3924], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 2;
ham4 doArtilleryFire[[8451,3878], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 3;
ham2 doArtilleryFire[[7783,3192], "magazine_ShipCannon_120mm_HE_shells_x32",1];

west reportRemoteTarget [trg1, 3000]; 
trg1 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg1, "weapon_vls_01"]; 
sleep 6;
west reportRemoteTarget [trg1, 3000]; 
trg1 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg1, "weapon_vls_01"]; 
sleep 4;
west reportRemoteTarget [trg1, 3000]; 
trg1 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg1, "weapon_vls_01"]; 

 //------------------------------------------------------------------------\\
//-------------------BOMBARDEIG AMERICÀ (CONTINUACIÓ)---------------------\\
//------------------------------------------------------------------------\\

ham1 doArtilleryFire[[9365,3838], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham3 doArtilleryFire[[9643,3321], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham4 doArtilleryFire[[8450,3725], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham2 doArtilleryFire[[7832,3094], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 5;

west reportRemoteTarget [trg2, 3000]; 
trg2 confirmSensorTarget [west, true];  
vls4 fireAtTarget [trg2, "weapon_vls_01"]; 
sleep 5;
west reportRemoteTarget [trg2, 3000]; 
trg2 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg2, "weapon_vls_01"];

ham1 doArtilleryFire[[11615,4465], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 2;
ham3 doArtilleryFire[[8419,3815], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 3;
ham4 doArtilleryFire[[9354,3811], "magazine_ShipCannon_120mm_HE_shells_x32",1];
ham2 doArtilleryFire[[7678,3321], "magazine_ShipCannon_120mm_HE_shells_x32",1];

west reportRemoteTarget [trg3, 3000]; 
trg3 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg3, "weapon_vls_01"];
sleep 2;
west reportRemoteTarget [trg3, 3000]; 
trg3 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg3, "weapon_vls_01"];
sleep 8;
west reportRemoteTarget [trg3, 3000]; 
trg3 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg3, "weapon_vls_01"];

ham1 doArtilleryFire[[9640,3325], "magazine_ShipCannon_120mm_HE_shells_x32",1];
ham3 doArtilleryFire[[8455,3755], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham4 doArtilleryFire[[9739,3888], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 4;
ham2 doArtilleryFire[[9643,3321], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;

west reportRemoteTarget [trg4, 3000]; 
trg4 confirmSensorTarget [west, true]; 
vls4 fireAtTarget [trg4, "weapon_vls_01"];
sleep 1;
west reportRemoteTarget [trg4, 3000]; 
trg4 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg4, "weapon_vls_01"];
sleep 2;
west reportRemoteTarget [trg5, 3000]; 
trg5 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg5, "weapon_vls_01"];
sleep 1;
west reportRemoteTarget [trg5, 3000]; 
trg5 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg5, "weapon_vls_01"];

sleep 10;

west reportRemoteTarget [trg6, 3000]; 
trg6 confirmSensorTarget [west, true]; 
vls4 fireAtTarget [trg6, "weapon_vls_01"];
sleep 1;
west reportRemoteTarget [trg6, 3000]; 
trg6 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg6, "weapon_vls_01"];
sleep 2;
west reportRemoteTarget [trg6, 3000]; 
trg6 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg6, "weapon_vls_01"];
sleep 1;
west reportRemoteTarget [trg6, 3000]; 
trg6 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg6, "weapon_vls_01"];

ham1 doArtilleryFire[[9349,3741], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham3 doArtilleryFire[[8462,3899], "magazine_ShipCannon_120mm_HE_shells_x32",1];
ham4 doArtilleryFire[[9707,3935], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
ham2 doArtilleryFire[[9640,3300], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 7;

west reportRemoteTarget [trg7, 3000]; 
trg7 confirmSensorTarget [west, true]; 
vls4 fireAtTarget [trg7, "weapon_vls_01"];
sleep 6;
west reportRemoteTarget [trg7, 3000]; 
trg7 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg7, "weapon_vls_01"];
sleep 2;
west reportRemoteTarget [trg7, 3000]; 
trg7 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg7, "weapon_vls_01"];
sleep 2;
west reportRemoteTarget [trg7, 3000]; 
trg7 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg7, "weapon_vls_01"];
sleep 1;
ham1 doArtilleryFire[[7651,3680], "magazine_ShipCannon_120mm_HE_shells_x32",1];
ham3 doArtilleryFire[[9731,3924], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 2;
ham4 doArtilleryFire[[8451,3878], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 3;
ham2 doArtilleryFire[[7783,3192], "magazine_ShipCannon_120mm_HE_shells_x32",1];
sleep 1;
west reportRemoteTarget [trg8, 3000]; 
trg8 confirmSensorTarget [west, true]; 
vls4 fireAtTarget [trg8, "weapon_vls_01"]; 
sleep 5;
west reportRemoteTarget [trg8, 3000]; 
trg8 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg8, "weapon_vls_01"]; 
sleep 4;
west reportRemoteTarget [trg8, 3000]; 
trg8 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg8, "weapon_vls_01"]; 

//------------------------------------------------------------------------\\
//-------------------PARAR MOTORS HELICÒPTERS 1, 2 I 3--------------------\\
//------------------------------------------------------------------------\\

heli1 engineOn false; 

sleep 5;

heli2 engineOn false;
 
sleep 6;

heli3 engineOn false; 

//------------------------------------------------------------------------\\
//-------------------BOMBARDEIG AMERICÀ (CONTINUACIÓ)---------------------\\
//------------------------------------------------------------------------\\
sleep 4;

west reportRemoteTarget [trg9, 3000]; 
trg9 confirmSensorTarget [west, true]; 
vls3 fireAtTarget [trg9, "weapon_vls_01"];

sleep 2;

ham1 doArtilleryFire[[5013,1897], "magazine_ShipCannon_120mm_HE_shells_x32",1];

sleep 3;

west reportRemoteTarget [trg9, 3000]; 
trg9 confirmSensorTarget [west, true]; 
vls1 fireAtTarget [trg9, "weapon_vls_01"];

sleep 3;

ham3 doArtilleryFire[[5752,2470], "magazine_ShipCannon_120mm_HE_shells_x32",1];

sleep 1;

ham4 doArtilleryFire[[8435,3810], "magazine_ShipCannon_120mm_HE_shells_x32",1];

sleep 2;

west reportRemoteTarget [trg10, 3000]; 
trg10 confirmSensorTarget [west, true]; 
vls4 fireAtTarget [trg10, "weapon_vls_01"];

sleep 2;

ham2 doArtilleryFire[[7782,3311], "magazine_ShipCannon_120mm_HE_shells_x32",3];

sleep 3;

west reportRemoteTarget [trg10, 3000]; 
trg10 confirmSensorTarget [west, true]; 
vls2 fireAtTarget [trg10, "weapon_vls_01"];

//------------------------------------------------------------------------\\
//---------------------------COMPLETAR TASCA------------------------------\\
//------------------------------------------------------------------------\\

["tsk_extP","SUCCEEDED"] call BIS_fnc_taskSetState;

//------------------------------------------------------------------------\\
//-----------------------PASSAR A SEGÜENT FASE (10)-----------------------\\
//------------------------------------------------------------------------\\

missionPhase = 10;

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\