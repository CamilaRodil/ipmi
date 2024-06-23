int cantX = 20;
int cantY = 20;

void fondo(){
  noStroke();
  float modX = 400/cantX;
  float modY = 400/cantY;
  for ( int j=0; j<cantY; j++) {
    for ( int i=0; i<cantX; i++) {
      if ( j%2==0  ){
        fill(0);
      } else {
       fill(255); 
      }
      rect(400+i*modX, j*modY, 20, 20);
    }
  }
  float mod2X = 400/cantX;
  float mod2Y = 400/cantY;
  for ( int j2=0; j2<cantY; j2++) {
    for ( int i2=0; i2<cantX; i2++) {
      if ( i2%2==0  ){
        fill(0);
      } else {
       fill(255); 
      }
      rect(600+i2*mod2X, 180-j2*mod2Y, 20, 20);
    }
  }
  float mod3X = 400/cantX;
  float mod3Y = 200/cantY;
  for ( int j3=0; j3<cantY; j3++) {
    for ( int i3=0; i3<cantX; i3++) {
      if ( i3%2==0  ){
        fill(0);
      } else {
       fill(255); 
      }
      rect(400+i3*mod3X, 390-j3*mod3Y, 20, 20);
    }
  }
  float mod4X = 400/cantX;
  float mod4Y = 400/cantY;
  for ( int j4=0; j4<cantY; j4++) {
    for ( int i4=0; i4<cantX; i4++) {
      if ( j4%2==0  ){
        fill(255);
      } else {
       fill(0); 
      }
      rect(600+i4*mod4X, 580-j4*mod4Y, 20, 20);
    }
  }
}
