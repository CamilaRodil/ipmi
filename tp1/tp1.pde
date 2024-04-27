/*Camila Rodil
legajo 95530/1
comisión 3*/

PImage imagen;

void setup(){
  size(800,400);
  imagen=loadImage("snufkin.jpg");
  imagen.resize(400,400);
 background(#818049);
 
}
void draw(){
  image(imagen,0,0);
  //println(mouseX,mouseY);

  //fondo
  fill(#173F3F);
  rect(400,170,400,400);
  noStroke();
  fill(#316630);
  rect(400,0,400,100);
  
  //gorro atras
  fill(#377D22);
  ellipse(600,170,370,50);
  
  //cuerpo atras
  fill(#377D22);
  triangle(540, 400, 600, 220, 700, 400);
  arc(655, 400, 260, 250, PI+QUARTER_PI, TWO_PI);
  fill(#173F3F);
  arc(655, 400, 160, 140, PI+QUARTER_PI, TWO_PI);
  fill(#377D22);
  triangle(540, 400, 670, 280, 715, 400);

 //pelo nuca
  fill(#633E23);
  triangle(665, 200, 690, 240, 700, 180);
  ellipse(640,200,115,100);

  //cara
  fill(#EBAB7D);
  ellipse(690,165,35,55);
  fill(#F2C697);
  ellipse(600,170,180,170);  
  
  //ojos
  fill(255);
  ellipse(535,165,35,60);
  ellipse(620,165,60,60);
  fill(#482311);
  ellipse(540,165,23,23);
  ellipse(620,165,23,23);
  fill(255);
  ellipse(550,165,5,5);
  ellipse(630,165,5,5);
  fill(#45260C);
  ellipse(575,215,50,35);  
  fill(#F2C697);
  ellipse(575,214,53,35);  
  fill(#EBAB7D);
  ellipse(570,200,37,35);    
  
  
  //pelo
  fill(#633E23);
  triangle(665, 150, 677, 175, 700, 150);
  triangle(655, 150, 660, 170, 670, 150);
  triangle(665, 150, 690, 185, 700, 150);
  triangle(500, 150, 510, 185, 515, 150);
  
  //gorro adelante
  fill(#9C9A25);
  triangle(510, 120, 600, -80, 680, 120);
  quad(430, 160, 520, 110, 670, 110, 770, 160);
 
  //cuerpo
  fill(#A16F06);
  quad(540, 392, 570, 250, 590, 255, 590, 388);
  fill(#BD8307);
  quad(590, 285, 590, 255, 650, 245, 650, 275);
  quad(560, 350, 570, 250, 600, 255, 610, 350);


}
