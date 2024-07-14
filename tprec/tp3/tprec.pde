//Camila Rodil #95530/1
//https://youtu.be/kE4WEttV5Pw

PImage imagen;
float x = 600;
float y = 200;
float tam = 240;
int cant = 7;
float velX = 1;
boolean animacion = false;

void setup() {
  size(800, 400);
  imagen = loadImage("F_25.jpg");
  imagen.resize(399, 400);
}

void draw() { 
 fondo(); 
 boolean animacionActiva = realizarAnimacion(); 
  if (animacionActiva) {
    x += velX;
    if (x >= width - tam/2 || x <= 640 - tam/2) {
      velX *= -1;
       }
       dibujaCirculos(x, y, tam, cant);
  }else{
     dibujaCirculos(x, y, tam, cant);
  }
   image(imagen, 0, 0);
}
