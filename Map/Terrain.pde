abstract class Terrain{
  int footHindrance;
  int wheelHindrance;
  int treadHindrance;
  int airHindrance;
  int defense;
  int x;
  int y;
  PImage img;
  boolean building;
  int pNum;
  boolean ground;
  boolean air;
  float health; //EDITED
  boolean occupied; //EDITED
  
  
  Terrain(){
    x = ((int)random(width - 2*16))/16 * 16 + 16;
    y = ((int)random(height - 2*16))/16 * 16 + 16;
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    airHindrance = 1;
    defense = 0;
    building = false;
    pNum = 4;
    ground = false;
    air = false;
    health = 20.0; //EDITED
  }
  
  Terrain(int newx, int newy, int fH, int wH, int tH, int def, int PNum){
    x = newx * 16;
    y = newy * 16;
    footHindrance = fH;
    wheelHindrance = wH;
    treadHindrance = tH;
    airHindrance = 1;
    defense = def;
    building = false;
    pNum = PNum;
    ground = false;
    air = false;
    health = 20.0; //EDITED
  }
  
  void refreshB() {
    occupied = false;
    health = 20.0;
  }
  
  boolean capture(Board B) { //EDITED
    Unit unit = B._board[y/16][x/16]._unitG;
    float effect = (unit.health + 5.0) / 10;
    if(health - effect > 0) {
      health -= effect;
      return false;
    }
    else {
      pNum = unit.pNum;
      occupied = false;
      health = 20.0;
      if (air || ground) {
        if (air) {
          img = loadImage(pNum + "5air.png");    
        } 
        else {
          img = loadImage(pNum + "5bas.png");  
        }
      }
      else if (defense == 3) {
        img = loadImage(pNum + "5cit.png");  
      }
      else if (defense == 4) {
        img = loadImage(pNum + "5hea.png");  
      }
    }
    return true;
  }
  
  void draw(){
     //fill(c);
     //rect(x, y, 16, 16); 
     image(img, x, y);
  }
}