Star[] starfield = new Star[500];
Spaceship A2 = new Spaceship();

void setup() {
  size(360,520);
  for (int i = 0; i < starfield.length; i++) {
    starfield[i] = new Star();
  }
  A2.setX(width/2);
  A2.setY(height-30);
  A2.setPointDirection(270);
}

void draw() {
  background(0);
  for (int i = 0; i < starfield.length; i++) {
    starfield[i].display();
    starfield[i].update();
  }
    A2.show();
  A2.move();
}

void keyPressed() {

}
