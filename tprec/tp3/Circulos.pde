void dibujaCirculos(float x, float y, float tam, int cant) { 
  push();
  translate(x, y);
  for (int i = 0; i < cant; i++) {
    rotate(sin(frameCount * 0.1) * 0.15);
    fill(i % 2 * 255);
    noStroke();
    float lado = map(i, 0, cant - 1, tam, 0);
    ellipse(0, 0, lado, lado);
  }
  pop();
}
