private int rocketCorners;
private int[] rocketCornersX, rocketCornersY;

class Spaceship extends Floater
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[4];
    yCorners = new int[4];
    rocketCornersX = new int[7];
    rocketCornersY = new int[7];
    xCorners[0] = 16;
    yCorners[0] = 0;  
    xCorners[1] = -8;
    yCorners[1] = -10; 
    xCorners[2] = -2;
    yCorners[2] = 0; 
    xCorners[3] = -8;
    yCorners[3] = 10;
    rocketCornersX[0] = -8;
    rocketCornersY[0] = -8;
    rocketCornersX[1] = -12;
    rocketCornersY[1] = -6;
    rocketCornersX[2] = -10;
    rocketCornersY[2] = -4;
    rocketCornersX[3] = 
    rocketCornersY[3] = 
    rocketCornersX[4] = 
    rocketCornersY[4] = 
    rocketCornersX[5] = 
    rocketCornersY[5] = 
    rocketCornersX[6] = 
    rocketCornersY[6] = 
    myColor = color(255);
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
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(keyWPressed == true)
    fill(255, 0, 0);
    beginShape();
    for(int i = 0; i < rocketCorners; i++) {
      vertex(rocketCornersX[i], rocketCornersY[i]);
    }
    endShape(CLOSE);
    
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}