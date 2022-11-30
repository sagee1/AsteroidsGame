class Star //note that this class does NOT extend Floater
{
  protected int myX, myY, myColor, mySize, myO;
  public Star(){
  myX = (int)(Math.random()*501);
  myY = (int)(Math.random()*501);
  myO = (int)(Math.random()*256);
  myColor = 0;
  mySize = (int)(Math.random()*10);
  }
  public void show(){
   fill(255, 255, 255, myO);
   ellipse(myX, myY, mySize, mySize); 
  }
}
