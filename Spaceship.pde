class Spaceship extends Floater  {  
   public Spaceship(){
     corners = 6;
     xCorners = new int[]{16, -8, -8, -13, -8, -8};
     yCorners = new int[]{0, 8, 3, 0, -3, -8};
     myCenterX = 250;
     myCenterY = 250;
     myColor = 255;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
   }
  public void hyperspace(){
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*361);
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
   return myCenterY; 
  }
}
