Spaceship rocket = new Spaceship();
boolean keyWPressed = false;
boolean keyAPressed = false;
boolean keySPressed = false;
boolean keyDPressed = false;
boolean keySpacePressed = false;

public void setup() 
{
  size(500, 500);
}

public void draw() 
{
  background(0);
  rocket.move();
  rocket.show();
  moverocket(rocket);
}

public void keyPressed() {
  if(key == 'w') {keyWPressed = true;}
  if(key == 'a') {keyAPressed = true;}
  if(key == 's') {keySPressed = true;}
  if(key == 'd') {keyDPressed = true;}
  if(key == ' ') {keySpacePressed = true;}
}

public void keyReleased() {
  if(key == 'w') {keyWPressed = false;}
  if(key == 'a') {keyAPressed = false;}
  if(key == 's') {keySPressed = false;}
  if(key == 'd') {keyDPressed = false;}
  if(key == ' ') {keySpacePressed = false;}
}

public void moverocket(Spaceship rocket) {
  if(keyWPressed == true)
    rocket.accelerate(0.1);
  if(keyAPressed == true)
    rocket.turn(-3);
  if(keySPressed == true)
    rocket.accelerate(-0.05);
  if(keyDPressed == true)
    rocket.turn(3);
  if(keySpacePressed == true) {
    rocket.setX((int)Math.random()*200);
    rocket.setY((int)Math.random()*200);
    rocket.setDirectionX(0);
    rocket.setDirectionY(0);
    rocket.setPointDirection((int)Math.random()*200);
    keySpacePressed = false;
  }
  
}