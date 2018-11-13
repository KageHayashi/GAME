Star[] starfield = new Star[500];
Spaceship A2 = new Spaceship();
float speed = 7;

boolean keyW = false;
boolean keyA = false;
boolean keyS = false;
boolean keyD = false;

void setup() {
  //fullScreen();
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
    A2.move();
}

public void keyPressed()  {
  if ((key == 'w')||(key=='W')) {keyW = true;}
  if ((key == 's')||(key=='S')) {keyS = true;}
  if ((key == 'a')||(key=='A')) {keyA = true;}
  if ((key == 'd')||(key=='D')) {keyD = true;}
  if (key == ' ') {
    A2.setX(Math.random()*800);
    A2.setY(Math.random()*800);
  }
}

public void keyReleased()  {
  if ((key == 'w')||(key=='W')) {keyW = false;}
  if ((key == 's')||(key=='S')) {keyS = false;}
  if ((key == 'a')||(key=='A')) {keyA = false;}
  if ((key == 'd')||(key=='D')) {keyD = false;} 
}
