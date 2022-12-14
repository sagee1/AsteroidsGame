Spaceship a = new Spaceship();
Star [] s;
ArrayList <Asteroid> list;
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
public void setup()
{
  size(500,500);
  s = new Star[500];
  list = new ArrayList <Asteroid>();
  for(int i = 0; i < s.length; i++){
   s[i] = new Star();
  }
  for(int i = 0; i < 16; i++){
    list.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  noStroke();
  for(int i = 0; i < s.length; i++){
   s[i].show();
  }
  for(int i = 0; i < list.size(); i++){
    Asteroid numRock = list.get(i);
    numRock.show();
    numRock.move();
    float d = dist((float)a.getX(), (float)a.getY(), (float)numRock.getX(), (float)numRock.getY());
     if(d < 30){
        list.remove(i);
     }
  }
  for(int i = 0; i < shoot.size(); i++){
    Bullet shell = shoot.get(i);
    shell.show();
    shell.move();
  }
  for(int j = 0; j < shoot.size(); j++){
    Bullet shells = shoot.get(j);
    for(int i = 0; i < list.size(); i++){
      Asteroid numRock = list.get(i);
      float hit = dist((float)shells.getX(), (float)shells.getY(), (float)numRock.getX(), (float)numRock.getY());
      if(hit < 30){
        list.remove(i); 
       }
    }
   }
   a.show();
   a.move();
}

public void keyPressed(){
     if(key == 'w'){
       a.accelerate(1);
     }
     else if(key == 'a'){
       a.turn(-10);
     }
     else if(key == 'd'){
       a.turn(10);
     }
     else if(key == 's'){
       a.accelerate(-1);
     }
     else if(key == 'h'){
       a.hyperspace();
     }
     else if(key == ' '){
      shoot.add(new Bullet(a)); 
     }
   }
