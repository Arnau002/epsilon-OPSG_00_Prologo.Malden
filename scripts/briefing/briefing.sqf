
//------------------------------------------------------------------------\\
//--------------------------CREACIÓ DE VARIABLES--------------------------\\
//------------------------------------------------------------------------\\


private ["_creditos", "_meteorologia", "_logistica", "_ejecucion", "_intel", "_mision", "_situacion", "_localizacion"];


//------------------------------------------------------------------------\\
//--------------------------------CRÉDITS---------------------------------\\
//------------------------------------------------------------------------\\

_credits = player createDiaryRecord ["Diary",["Créditos",
"Misión creada por <font color='#FFFF00'>Arnau002</font> para la comunidad del <font color='#FFFF00'>Comando Épsilon</font>.
<br/><br/>
Quiero agradecer la ayuda de <font color='#FFFF00'>Davidaf</font> y <font color='#FFFF00'>Monika</font> en el proceso de creación y junto a <font color='#FFFF00'>RenderDino</font> por su ayuda en el testeo.
"]];


//------------------------------------------------------------------------\\
//------------------------------METEOROLOGIA------------------------------\\
//------------------------------------------------------------------------\\

_meteorologia = player createDiaryRecord ["Diary",["Meteorología",
"La previsión meteorológica nos indica lluvia en las próximas horas, un incremento del viento dirección norte y un descenso general de la visibilidad. A partir del inicio de la misión dispondréis de aproximadamente una hora de luz natural."]];


//------------------------------------------------------------------------\\
//-------------------------------LOGÍSTICA--------------------------------\\
//------------------------------------------------------------------------\\

_logistica = player createDiaryRecord ["Diary",["Logística",
"Al líder del equipo se le proporcionará un UAV a control remoto <font color='#FFFF00'>RQ-11 Raven</font> para ayudar en el reconocimiento previo al asalto. También dispondréis, antes de iniciar la misión, de dos cajas con equipamiento junto a la isla del portaaviones.
<br/><br/>  
Al no estar nuestro país en conflicto abierto con los rebeldes no dispondréis de soporte aéreo o artillería."]];


//------------------------------------------------------------------------\\
//--------------------------------EXECUCIÓ--------------------------------\\
//------------------------------------------------------------------------\\

_ejecucion = player createDiaryRecord ["Diary",["Ejecución",
"La ejecución se realizará en tres fases:
<br/><br/>
1-Inserción en 3 helicópteros MH-6M Little Bird (Mike, Sierra y Victor) en los puntos marcados en el mapa, los helicópteros salen de los helipuertos verde, rojo y azul respectivamente.
<br/><br/> 
2-Aproximación al punto  y captura de objetivos
<br/><br/>
3-Extracción del equipo y los prisioneros en un	CH-53E (Yankee)"]];


//------------------------------------------------------------------------\\
//---------------------------------INTEL----------------------------------\\
//------------------------------------------------------------------------\\

_intel = player createDiaryRecord ["Diary",["Intel",
"Las fuerzas enemigas disponen de pocos efectivos, repartidos por toda la isla. Nuestros informes nos indican que cuentan con poco equipamiento, básicamente vehículos ligeros y algunas piezas de artillería, sin blindados ni aviones."]];


//------------------------------------------------------------------------\\
//--------------------------------MISSIÓ----------------------------------\\
//------------------------------------------------------------------------\\

_mision = player createDiaryRecord ["Diary",["Misión",
"Nuestra inteligencia nos informa que se producirá una reunión entre personalidades del nuevo gobierno y representantes iranís al oeste de la isla, cerca de La Pessagne. Aún no sabemos la cantidad de personas que asistirán ni el objetivo de la reunión, aunque deducimos que se discutirá la venta de armas y equipamiento por parte de Irán.
<br/><br/>
Vuestra tarea es capturar a los asistentes de la reunión. Si se ejecuta con éxito la misión la posición del actual gobierno se verá severamente debilitada y nos abriría la puerta a una futura intervención militar."]];

//------------------------------------------------------------------------\\
//--------------------------------SITUACIÓ--------------------------------\\
//------------------------------------------------------------------------\\

_situacion = player createDiaryRecord ["Diary",["Situación",
"Después de meses de inestabilidad política en la isla de Malden milicias han tomado el poder de la isla, obligando al presidente elegido democráticamente a exiliarse a Suiza. Una de las primeras acciones del nuevo gobierno ha sido distanciarse del bloque occidental e iniciar contactos con Rusia y Irán."]];

//------------------------------------------------------------------------\\
//------------------------------LOCALITZACIÓ------------------------------\\
//------------------------------------------------------------------------\\

_localizacion = player createDiaryRecord ["Diary",["Localización",
"Malden es una isla situada en el Atlántico al oeste del estrecho de Gibraltar. Antiguo territorio francés de ultramar, fue ocupado por Rusia durante las Guerras Napoleónicas, de la que se independizó durante la revolución rusa de 1917. 
<br/><br/>
A partir de la Segunda Guerra Mundial Malden ha sido un territorio aliado de la OTAN, sin formar parte de ella. En 1960 los americanos instalaron una base militar al sureste, en una isla cercana, esta base fue desmantelada al final de la Guerra Fría.
<br/><br/>
Malden es una isla montañosa, el punto más alto se eleva 523 metros sobre el nivel del mar. El terreno es árido,  con la vegetación compuesta básicamente por arbustos y árboles pequeños.
<br/><br/>
La mayoría de la población es descendiente de colonos franceses o marineros rusos, también viven en la isla algunos militares americanos retirados. La capital de la isla es La Trinité situada al este, cerca de la costa."]];

//------------------------------------------------------------------------\\
//--------------------------FINAL DEL DOCUMENT----------------------------\\