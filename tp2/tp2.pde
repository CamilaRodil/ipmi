//https://buenosaires.gob.ar/cultura/noticias/la-obra-de-refik-anadol-el-artista-digital-mas-influyente-del-mundo-se-presento-en
//https://www.infobae.com/cultura/2022/09/26/una-impactante-obra-nft-de-refik-anadol-se-exhibira-gratis-en-el-teatro-colon/
//Camila Rodil
//Comision 3

int segundos;

int pos1;
int pos2;
int pos3;

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagenboton;

int tatexto3;

PFont fuente;

boolean pant1;
boolean pant2;
boolean pant3;
boolean pant4;

void setup() {
  size(640, 480);
  textSize(30);

  pos1 = -200;
  pos2 = width/2;
  pos3= 100;

  imagen1= loadImage("img obra.png");
  imagen2=loadImage("img los corales.jpeg");
  imagen3=loadImage("img proceso creacion.jpeg");
  imagen4=loadImage("img obra.jpg");
  imagenboton= loadImage("Group 3 (1).png");

  tatexto3= 0;

  fuente= loadFont("MicrosoftJhengHeiUIBold-48.vlw");

  pant1 = false;
  pant2 = false;
  pant3 = false;
  pant4 = false;
}

void draw() {
  background(255);
  println(mouseX, mouseY);
  //pantallas
  if (segundos>=10) {
    pant1= true;
  }
  if (segundos>=20) {
    pant2= true;
  }
  if (segundos>=30) {
    pant3= true;
  }
  if (segundos>=40) {
    pant4= true;
  }
  if (segundos==0) {
    pant1= false;
    pant2= false;
    pant3= false;
    pant4= false;
  }

  // primer pantall
  if (segundos<10) {
    image(imagen1, 0, 0, width, height);
  }
  //segunda pantalla
  if (segundos>=10 && segundos<20) {
    image(imagen2, 0, 0, width, height);
  }
  //tercer pantalla
  if (segundos>=20) {
    image(imagen3, 0, 0, width, height);
  }
  if (segundos>=30) {
    image(imagen4, 0, 0, width, height);
  }

  textFont(fuente);

  //texto primer pantalla
  textSize(20);
  fill(0);
  text("Machine Hallucinations: Coral,\nuna obra de Refik Anadol\nque combina la tecnología,\nla ciencia y el arte.", pos1, height/2);   //reinicia pos del texto
  if (segundos == 0) {
    pos1= -410;
  }
  if (pos1< 900 && pant1== false) {      // mueve el texto
    pos1 ++;
    pos1 ++;
  }

  //texto segunda pantalla
  textSize(22);
  fill(255);
  text("Su equipo recolectó 300 millones\nde datos sobre la naturaleza y procesó 1.742.772\nde imágenes de corales de redes sociales\nmediante modelos de aprendizaje automático.", 70, pos2);
  if (segundos == 0) {
    pos2= 550;
  }
  if (pos2>-height && segundos>=10) {
    pos2 --;
  }

  // texto tercer pantalla
  if (segundos == 0) {
    tatexto3 = 0;
  }
  if (segundos >= 20 && segundos < 30) {
    fill(255);
    textSize(tatexto3);
    text("Este proceso generó nuevas conexiones e\nilusiónes ópticas y colores de coral,\ninspiradas en la dinámica de fluidos. ", pos3, height / 2);
    textAlign(width/2, CENTER);
    if (tatexto3 < 20) {
      tatexto3++;
    }
  }

  // texto cuarta pantalla
  if (segundos>=30) {
    fill(0);
    textSize(18);
    text("Fue presentada por primera vez en la playa del\nFaena Hotel durante la Art Basel Week 2021,\nen Miami, y ahora se encuentra expuesta\nen todas partes del mundo", 40, 70);
    if (segundos>=32) {
      fill(255);
      text("\n\nMachine Hallucinations: Coral,\nuna de las obras más importantes\nde la historia del arte digital.", 40, 400);
    }
  }

  //boton
  if (segundos>=34) {
    image(imagenboton, 450, 400, 100, 40);
  }

  //tiempo
  if (frameCount %60==0) {
    segundos++;
    // println(segundos);
  }
}

void mousePressed() {
  if (pant1== true) {
    if (mouseX>450 && mouseX<550 && mouseY>400 && mouseY<440) {
      segundos=0;
    }
  }
}
