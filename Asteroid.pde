class Asteroid extends Floater{
  protected int myRotation;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{20, 18, 11, 0, -11, -11, -6, 15};
     yCorners = new int[]{0, 8, 11, 11, 6, -8, -13, -14};
     //xCorners = new int[]{15, 13, 11, 0, -6, -6, -1, 10};
     //yCorners = new int[]{0, 3, 6, 6, 1, -3, -8, -9};
     myCenterX = (int)(Math.random()*501);
     myCenterY = (int)(Math.random()*501);
     myColor = 150;
     myXspeed = myYspeed = (int)(Math.random()*50);
     //myYspeed = (int)(Math.random()*50);
     myPointDirection = (int)(Math.random()*361);
     myRotation = (int)(Math.random()*9)-4;
  }
  public void move(){

   myXspeed = myYspeed = (int)(Math.random()*4);
   myPointDirection += myRotation;
   
   //does the same thing as floater's move()
   super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
   return myCenterY; 
  }
}
