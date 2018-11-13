class Spaceship extends Floater
{
    public Spaceship() {
      corners = 5;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 16;
      yCorners[0] = 0;
      xCorners[1] = -3;
      yCorners[1] = -10;
      xCorners[2] = -10;
      yCorners[2] = -4;
      xCorners[3] = -10;
      yCorners[3] = 4;
      xCorners[4] = -3;
      yCorners[4] = 10;

      myColor = 255;
    }

    public void setX(double x) {myCenterX = x;}
    public int getX() {return (int)myCenterX;}
    public void setY(double y) {myCenterY = y;}
    public int getY() {return (int)myCenterY;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double getDirectionX() {return (int)myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return (int)myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;}
    
    public void update() {
      if (keyW == true) {myDirectionY = -speed;}
      if (keyA == true) {myDirectionX = -speed;}
      if (keyS == true) {myDirectionY = speed;}
      if (keyD == true) {myDirectionX = speed;}
      if (keyW == false && keyS == false && myDirectionY != 0)  {
            if (myDirectionY > 0) {myDirectionY -= speed*0.1;}
            if (myDirectionY < 0) {myDirectionY += speed*0.1;}
            if (abs((float)myDirectionY) < speed*0.05) {myDirectionY = 0;}
          }
      if (keyA == false && keyD == false && myDirectionX != 0)  {
            if (myDirectionX > 0) {myDirectionX -= speed*0.1;}
            if (myDirectionX < 0) {myDirectionX += speed*0.1;}
            if (abs((float)myDirectionX) < speed*0.1d) {myDirectionX = 0;}
          }
      }
      
      public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(3*PI/2);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}
