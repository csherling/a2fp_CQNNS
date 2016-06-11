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

  }
  
  void draw(){
     //fill(c);
     //rect(x, y, 16, 16); 
     image(img, x, y);
  }
}