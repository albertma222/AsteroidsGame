class Asteroid extends Floater {
  private int setSpeed;
  public Asteroid() {
    corners = 8;
    xCorners = new int[8];
    yCorners = new int[8];
    xCorners[0] = 16;
    yCorners[0] = -8;  
    xCorners[1] = 8;
    yCorners[1] = -16;
    xCorners[2] = -8;
    yCorners[2] = -16;
    xCorners[3] = -16;
    yCorners[3] = -8; 
    xCorners[4] = -16;
    yCorners[4] = 8;
    xCorners[5] = -8;
    yCorners[5] = 16;  
    xCorners[6] = 8;
    yCorners[6] = 16; 
    xCorners[7] = 16;
    yCorners[7] = 8; 
    setSpeed = (int)(Math.random()*4 - 2);
    myColor = color(162);
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*1200);
    myDirectionX = Math.random()*7-3;
    myDirectionY = Math.random()*7-3;
    myPointDirection = 0;
  }
  public void setX(int x) {myCenterX = x;}  
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
  
  public void move() {
    turn(setSpeed);
    super.move();
  }
}