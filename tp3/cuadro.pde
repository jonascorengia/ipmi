void cuadro() {
  h=map(mouseX, 0, width, 0, 255);
  y=map(mouseX, 0, width, 255, 0);
  background(255);
  imagen1 = loadImage("img.jpg");
  image(imagen1, 0, 0, width/2, height);
  tami = width/2;
  for (i=0; i<cant; i++) {
    for (l=0; l<11; l++) {
      if (parnopar()) {
        fill(h);
      } else {
        fill (y);
      }
      rect(tami+32*i-i*i, l*40, 32-i*2, 39);
      rect(904-32*i+i*i, l*40, 32-i*2, 39);
    }
  }
  if (cant < 17 + 15) {
    p= 1;
  } else {
    p=0;
  }
}
