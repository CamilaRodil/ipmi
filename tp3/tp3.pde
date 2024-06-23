//Camila Rodil #95530/1
//https://youtu.be/kgTinT63wa0

PImage imagen;
float posX = 600;
float posY = 200;
float tamX = 240;
float tamY = 150;
float velX = 1;
boolean animacion = false;

void setup() {
  size(800, 400);
  imagen = loadImage("F_25.jpg");
}

void draw() {
  image(imagen, 0, 0);
  imagen.resize(399, 399);
  fondo();
  animacion();
}
