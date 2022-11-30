Spaceship a = new Spaceship();
Star [] s;
public void setup()
{
  size(500,500);
  s = new Star[500];
  for(int i = 0; i < s.length; i++){
   s[i] = new Star();
  } 
}
public void draw()
{
  background(0);
  noStroke();
  for(int i = 0; i < s.length; i++){
   s[i].show();
  } 
  a.show();
  a.move();
}

public void keyPressed(){
     if(key == 'w'){
       a.accelerate(1);
     }
     if(key == 'a'){
       a.turn(-10);
     }
     if(key == 'd'){
       a.turn(10);
     }
     if(key == 's'){
       a.accelerate(-1);
     }
     if(key == 'h'){
       a.hyperspace();
     }
   }
