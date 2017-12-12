Stars[] galaxy = new Stars[500];
Asteroid[] rocks = new Asteroid[20];
ArrayList <Bullet> laser = new ArrayList <Bullet>();
Spaceship rocket = new Spaceship();
boolean keyWPressed = false;
boolean keyAPressed = false;
boolean keySPressed = false;
boolean keyDPressed = false;
boolean keyQPressed = false;
boolean keySpacePressed = false;
boolean mouseIsPressed = false;

public void setup() 
{
  size(1200, 700);
  for(int i = 0; i < galaxy.length; i++) {
    galaxy[i] = new Stars();
  }
  for(int i = 0; i < rocks.length; i++) {
    rocks[i] = new Asteroid();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length; i++) {
    galaxy[i].show();
  }
  for(int i = 0; i < laser.size(); i++) {
  	laser.get(i).show();
  	laser.get(i).move();
  }
  for(int i = 0; i < rocks.length; i++) {
    rocks[i].show();
    rocks[i].move();
  }
  rocket.move();
  rocket.show();
  moverocket(rocket);
  stroke(255);
  fill(255);
  textSize(20);
  text("Current Position (X,Y): (" + rocket.getX() + ", " + rocket.getY() + ")", 10, 25);
  text("Current Speed (X): " + (int)(100 * rocket.getDirectionX())/100.0 + " MM/HR", 10, 50);
  text("Current Speed (Y): " + (int)(100 * rocket.getDirectionY())/100.0 + " MM/HR", 10, 75);
  text("Current Direction: " + abs((float)rocket.getPointDirection() % 360) + "°", 10, 100);
}

public void keyPressed() {
  if(key == 'w') {keyWPressed = true;}
  if(key == 'a') {keyAPressed = true;}
  if(key == 's') {keySPressed = true;}
  if(key == 'd') {keyDPressed = true;}
  if(key == ' ') {keySpacePressed = true;}
  if(key == 'q') {keyQPressed = true;}
  if(mousePressed) {mouseIsPressed = true;}
}

public void keyReleased() {
  if(key == 'w') {keyWPressed = false;}
  if(key == 'a') {keyAPressed = false;}
  if(key == 's') {keySPressed = false;}
  if(key == 'd') {keyDPressed = false;}
  if(key == ' ') {keySpacePressed = false;}
  if(key == 'q') {keyQPressed = false;}
  if(mousePressed) {mouseIsPressed = false;}
}

public void moverocket(Spaceship rocket) {
  
  if(keyWPressed == true)
    rocket.accelerate(0.15);
    
  if(keyAPressed == true)
    rocket.turn(-5);
    
  if(keySPressed == true)
    rocket.accelerate(-0.15);
    
  if(keyDPressed == true)
    rocket.turn(5);

  if(keySpacePressed == true)
  	laser.add(new Bullet(rocket));
    
  if(keyQPressed == true) {
    
    rocket.setX((int)(Math.random()*1200));
    rocket.setY((int)(Math.random()*675));
    rocket.setDirectionX(0);
    rocket.setDirectionY(0);
    rocket.setPointDirection((int)(Math.random()*181));
    keyQPressed = false;
    
  }
}