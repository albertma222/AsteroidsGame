public class Stars
{
  private int myX, myY, eX, eY;
  public Stars() {
    myX = ((int)(Math.random() * 700));
    myY = ((int)(Math.random() * 700));
    eX = ((int)(Math.random() * 5));
    eY = ((int)(Math.random() * 5));
    eX = eY;
  }
  
  public void show() {
    fill(255);
    ellipse(myX, myY, eX, eY);
  }
  
}