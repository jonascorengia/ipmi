//TP2
//COMISION 5
// Jonas Corengia, 118999/7


PFont fuente;

PImage imagen1, imagen2, imagen3;

int tiempo, col1, col2, col3;
float letra, suma;

void setup(){
  size(640,480);
  
  fuente = loadFont("fuentereal.vlw");
  
  textFont(fuente);
  
  tiempo = 0;
  letra = 10;
  suma = 0.05;
  
  imagen1 = loadImage("quino.jpeg");
  imagen2 = loadImage("mafalda.jpg");
  imagen3 = loadImage("amigos de mafalda.png");
  
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
}
void draw(){
  tiempo += 1;
  
  letra += suma;
  
  textSize(letra);
  
 if(tiempo <=300){
   image(imagen1, 0, 0, width, height);
   fill(255);
   text("Mafalda es el nombre de una tira de prensa argentina \n creada por el humorista gráfico Quino de 1964 a 1973", 320, 240);
 }
 
 if(tiempo == 300){
   letra = 10;
 }
 
 if(tiempo >=301 && tiempo <=600){
   image(imagen2, 0, 0, width, height);
   fill(98, 96,185);
   text("protagonizada por la niña homónima \n que se muestra preocupada por la humanidad \n y la paz mundial",320, 240);
   
 }
 if(tiempo==600){
   letra = 10;
 }
 
 if(tiempo >=601 && tiempo <=900){
   image(imagen3, 0, 0, width, height);
   text("Que es acompañada por sus amigos: \n Miguelito,Manolito,Felipe,Susanita y su hermanito \n Guille",320, 240);
 }
 if(tiempo == 900){
   letra = 20;
   suma = 0;
 }
 if(tiempo > 900){
   background(0);
   
   push();
   fill(col1, col2, col3);
   rect(width/2,height/2, 100, 30);
   pop();
   
   text("reiniciar", width/2,height/2);
  
 }
}
void mouseClicked(){
  if(tiempo > 900){
  if(mouseX <= width/2 + 50 && mouseX >= width/2 - 50 && mouseY <= height/2 + 15 && mouseY >= height/2 - 15){
  tiempo = 0;
  letra = 10;
  suma = 0.05;   
  }
  }
}
void mouseMoved(){
  if(mouseX <= width/2 + 50 && mouseX >= width/2 - 50 && mouseY <= height/2 + 15 && mouseY >= height/2 - 15){
  col1 = 51;
  col2 = 193;
  col3 = 92;
  } else {
    col1 = 255;
    col2 = 255;
    col3 = 255;
  }
}
   
