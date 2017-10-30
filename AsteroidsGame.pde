Stars[] galaxy = new Stars[300];
Spaceship rocket = new Spaceship();
boolean keyWPressed = false;
boolean keyAPressed = false;
boolean keySPressed = false;
boolean keyDPressed = false;
boolean keyQPressed = false;
boolean keySpacePressed = false;

public void setup() 
{
  size(700, 700);
  for(int i = 0; i < galaxy.length; i++) {
    galaxy[i] = new Stars();
  }
}

public void draw() 
{
  background(0);
  rocket.move();
  rocket.show();
  moverocket(rocket);
  for(int i = 0; i < galaxy.length; i++) {
    galaxy[i].show();
  }
}

public void keyPressed() {
  if(key == 'w') {keyWPressed = true;}
  if(key == 'a') {keyAPressed = true;}
  if(key == 's') {keySPressed = true;}
  if(key == 'd') {keyDPressed = true;}
  if(key == ' ') {keySpacePressed = true;}
  if(key == 'q') {keyQPressed = true;}
}

public void keyReleased() {
  if(key == 'w') {keyWPressed = false;}
  if(key == 'a') {keyAPressed = false;}
  if(key == 's') {keySPressed = false;}
  if(key == 'd') {keyDPressed = false;}
  if(key == 'q') {keyQPressed = false;}
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
    
  if(keyQPressed == true) {
    
    rocket.setX((int)(Math.random()*700));
    rocket.setY((int)(Math.random()*700));
    rocket.setDirectionX(0);
    rocket.setDirectionY(0);
    rocket.setPointDirection((int)(Math.random()*181));
    keyQPressed = false;
    
  }
  if(keySpacePressed == true)
  rocket.accelerate(0.1);
   
}