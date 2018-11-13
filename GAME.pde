Star[] starfield = new Star[500];
Spaceship A2 = new Spaceship();

void setup() {
  size(360,520,P3D);
  for (int i = 0; i < starfield.length; i++) {
    starfield[i] = new Star();
  }
  A2.setX(width/2);
  A2.setY(height-30);
  noCursor();
}

void draw() {
  background(0);
  for (int i = 0; i < starfield.length; i++) {
    starfield[i].display();
    starfield[i].update();
  }
    A2.show();
    A2.update();
}

/**void keyPressed() {
  if (key == CODED) {
   if (keyCode == UP) {
      A2.myCenterY -= 5;
    }
    if (keyCode == DOWN) {
      A2.myCenterY += 5;
    }
  }
}*/
