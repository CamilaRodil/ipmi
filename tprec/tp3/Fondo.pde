int cantX = 20;
int cantY = 20;

void fondo() {
  noStroke();
  float modX = 400 / cantX;
  float modY = 400 / cantY;
  for (int j = 0; j < cantY; j++) {
    for (int i = 0; i < cantX; i++) {
      if (j % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(400 + i * modX, j * modY, 20, 20);
      if (i % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(600 + i * modX, 380 - j * modY, 20, 20);
       }
    }
  int j = 1;
  int cant2X = 20;
  float mod2X = 400 / cant2X;
       for (int i_ = 0; i_ < cant2X; i_ ++) {
      if (i_ % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(199 + i_ * mod2X, 220 - j * modY, 20, 280);
    }
  }
