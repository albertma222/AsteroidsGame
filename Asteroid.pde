class Asteroid extends Floater {
  private int setSpeed;
  public Asteroid() {
    corners = 8;
    xCorners = new int[8];
    yCorners = new int[8];
    xCorners[0] = 4;
    yCorners[0] = -9;  
    xCorners[1] = -2;
    yCorners[1] = -6;
    xCorners[2] = -1;
    xCorners[2] = -4;
    xCorners[3] = -3;
    yCorners[3] = -2; 
    xCorners[4] = -1;
    yCorners[4] = 4;
    xCorners[5] = 6;
    yCorners[5] = 1;  
    xCorners[6] = 9;
    yCorners[6] = -2; 
    xCorners[7] = 7;
    yCorners[7] = -3; 
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