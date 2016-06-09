abstract class Terrain{
  int hindrance;
  int x;
  int y;
  color c;
  PImage img;
  
  
  Terrain(){
    x = ((int)random(width - 2*16))/16 * 16 + 16;
    y = ((int)random(height - 2*16))/16 * 16 + 16;
    c = color(100, 100, 100);
    hindrance = 0;
  }
  
  Terrain(int newx, int newy, int newHind){
    x = newx * 16;
    y = newy * 16;
    c = color(100, 100, 100);
    hindrance = newHind;
  }
  
  void draw(){
     fill(c);
     rect(x, y, 16, 16); 
     //image(img, x, y);
  }
}