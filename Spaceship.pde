class Spaceship extends Floater() 
{   
  public Spaceship() {
    corners = 0;
    XCorners = new int[4];
    yCorners = new int[4];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[0] = -8;
    yCorners[0] = 8;
    xCorners[0] = -2;
    yCorners[0] = 0;
  }
  
  public void setX(int x);  
  public int getX();   
  public void setY(int y);   
  public int getY();   
  public void setDirectionX(double x);   
  public double getDirectionX();   
  public void setDirectionY(double y);   
  public double getDirectionY();   
  public void setPointDirection(int degrees);   
  public double getPointDirection(); 
}