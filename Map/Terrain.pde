abstract class Terrain{
  int footHindrance;
  int wheelHindrance;
  int treadHindrance;
  int airHindrance;
  int defense;
  int x;
  int y;
  color c;
  PImage img;
  
  
  Terrain(){
    x = ((int)random(width - 2*16))/16 * 16 + 16;
    y = ((int)random(height - 2*16))/16 * 16 + 16;
    c = color(100, 100, 100);
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    airHindrance = 1;
    defense = 0;
  }
  
  Terrain(int newx, int newy, int fH, int wH, int tH, int def){
    x = newx * 16;
    y = newy * 16;
    c = color(100, 100, 100);
    footHindrance = fH;
    wheelHindrance = wH;
    treadHindrance = tH;
    airHindrance = 1;
    defense = def;

  }
  
  void draw(){
     //fill(c);
     //rect(x, y, 16, 16); 
     image(img, x, y);
  }
}