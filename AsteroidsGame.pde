Spaceship rocket = new Spaceship();

public void setup() 
{
  size(500, 500);
}
public void draw() 
{
  background(0);
  rocket.move();
  rocket.show();
}