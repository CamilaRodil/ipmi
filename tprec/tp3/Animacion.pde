boolean realizarAnimacion() {
    return mousePressed && animacion;
}

void mousePressed() {  
  if (calcularDistancia() && !animacion) {
    animacion = true;
  } else if (calcularDistancia() && animacion) {
    animacion = false;
    x = 600;
    velX = 1;
  }
}

boolean calcularDistancia(){
  float distancia = dist(mouseX, mouseY, x, y);
 return distancia <= tam / 2;
}
