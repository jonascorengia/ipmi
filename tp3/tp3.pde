//tp3
//COMISION 5
//Jonas Corengia, 118999/7
//https://www.youtube.com/watch?v=Hj6pP3vvsgs
//perdon por el ruido del audio, pero es que no tengo un microfono con mucha calidad.

PImage imagen1 ;
int tami;
int cant;
int p;
int i;
int l;
int f;
float h;
float y;
void setup() {
  size(800, 400);
  cant = 15;
}
boolean parnopar() {
  return ((i+l)%2==0);
}

void draw() {
  cuadro();
}

void mousePressed () {
  cant +=p;
}
void keyPressed() {
  cant = 15;
}
