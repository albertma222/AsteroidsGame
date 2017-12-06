class Bullet extends Floater {
	public Bullet() {
		myCenterX = 250;
		myCenterY = 250;
		myPointDirection = 0;
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + myDirectionX;
		myDirectionX = 5 * Math.sin(dRadians) + myDirectionY;
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
    	if(myDirectionX > MAX_SPEED)
    		myDirectionX = MAX_SPEED;
    	if(myDirectionX < -MAX_SPEED)
     		myDirectionX = -MAX_SPEED;
    	if(myDirectionY > MAX_SPEED)
      		myDirectionY = MAX_SPEED;
    	if(myDirectionY < -MAX_SPEED)
      		myDirectionY = -MAX_SPEED;
      
    super.move();

    public void show()
 		{
 			fill(255);
 			ellipse(20, 20, 20, 20);
   		}

}	