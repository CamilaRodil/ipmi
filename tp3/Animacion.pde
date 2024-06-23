boolean animacion() {
  boolean animacionActiva = false;
  if (animacion) {
    posX += velX;
    if (posX >= width - tamX / 2 || posX <= width / 1.54) {
      velX *= -1;
    }
    circulos(posX, posY, tamX, tamY);
    animacionActiva = true;
  } else {
    circulos(posX, posY, tamX, tamY);
  }
  return animacionActiva;
}

void mousePressed() {
  float distancia = dist(mouseX, mouseY, posX, posY);
  if (distancia <= tamX / 2 && !animacion) {
    animacion = true;
  } else {
    animacion = false;
    posX = 600;
    velX = 1;
  }
}
