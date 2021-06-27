//========================================================================\\
// Arxiu: title.sqf                                                       \\                               
// Autor: Arnau002                                                        \\                               
// Versió: 0.1                                                            \\                               
// Creació del Document: 09/06/2021                                       \\ 
// Descripció: Mostra el títol de la missió en pantalla                   \\  
// Canvis: 0.1 (2021/06/09) Versió inicial.                               \\                          
//========================================================================\\

[
		[
			["Operation Shield Gate","<t color = '#FFFFFF' align = 'right' shadow = '1' size = '1.2'>%1</t><br/>"],
			[([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString) + " " + str(date select 2) + "." + str(date select 1) + "." + str(date select 0),"<t color = '#FCFCFC' align = 'right' shadow = '1' size = '1.0'>%1</t><br/>"],
			["Oeste de Malden","<t color = '#FAFAFA' align = 'right' shadow = '1' size = '1.0'>%1</t>"]
		],-safeZoneX,-safeZoneY
] spawn BIS_fnc_typeText; 

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\