class Star {
  private float x,y;
  public Star() {
    x = random(width);
    y = random(2*height);
  }
  public void update() {
    y -= 2;
    if (y < 0) {
      y = random(height,2*height);
    }
  }
  public void display() {
    stroke(255);
    ellipse(x,y,1,1);
  }
}
