Stars[] galaxy = new Stars[500];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> laser = new ArrayList <Bullet>();
Spaceship rocket = new Spaceship();
int bulletlimit = 0;
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
  for(int i = 0; i < 30; i++) {
    rocks.add(new Asteroid());
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
  collision(rocks);
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

public void collision(ArrayList <Asteroid> asteroids) {
  for(Asteroid rock : asteroids) {
    rock.show();
    rock.move();
  }

  for(int i = 0; i < asteroids.size(); i++) {
    if(asteroids.get(i).distance(rocket) <= 12) {
      asteroids.remove(i);
      break;
    }
  }

  for(int i = 0; i < asteroids.size(); i++) {

    for(int nI = 0; nI < laser.size(); nI++) {

      if(asteroids.get(i).distance(laser.get(nI)) <= 12) {
        laser.remove(nI);
        asteroids.remove(i);
        break;
      }
    }
  }
}