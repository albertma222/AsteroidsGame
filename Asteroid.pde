class Asteroids extends Floater {
  private int setSpeed;
  public Asteroids() {
    xCorners[0] = 0;
    yCorners[0] = 0;
    setSpeed = (int)(Math.random()*4 - 2);
    myColor = color(162, 162, 162);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
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