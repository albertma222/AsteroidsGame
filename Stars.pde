public class Stars
{
  private int myX, myY, eX, eY, myColor;
  public Stars() {
    myX = ((int)(Math.random() * 1200));
    myY = ((int)(Math.random() * 675));
    eX = ((int)(Math.random() * 7));
    eY = ((int)(Math.random() * 7));
    eX = eY;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
  public void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, eX, eY);
  }
  
}