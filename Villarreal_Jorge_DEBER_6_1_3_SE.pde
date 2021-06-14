/*
DEBER 6.1
RETO 3
NOMBRE: Jorge Villarreal
*/

import processing.serial.*;
Serial port;
String val="";
float value;


void setup(){
  size(500, 500);
background(#a3a3a3);
port = new Serial(this,"COM3",9600);
}


void draw(){
if (port.available() > 0){
val=port.readStringUntil('\n');
if(val==null){
return;
}
value=float(val);
}
if (value==1){
background(#a3a3a3);
textAlign(CENTER);
textSize(30);
fill(0);
text("El boton no esta",250,45);
textSize(30);
text("presionado",250,80);
textSize(30);
fill(0);
text("Jorge Villarreal",250,450);
fill(#00ff00);
stroke(#00ff00);
ellipse(250,250,200,200);
}
if(value==2){
background(#a3a3a3);
textAlign(CENTER);
textSize(30);
fill(0);
text("El boton no esta",250,45);
textSize(30);
text("presionado",250,80);
textSize(30);
fill(0);
text("Jorge Villarreal",250,450);
fill(#cc0000);
stroke(#cc0000);
ellipse(250,250,200,200);
}
}
