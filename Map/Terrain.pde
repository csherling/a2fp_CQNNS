abstract class Terrain{
  int hindrance;
  int x;
  int y;
  color c;
  PImage img;
  
  
  Terrain(){
    x = ((int)random(width - 2*10))/10 * 10 + 10;
    y = ((int)random(width - 2*10))/10 * 10 + 10;
    c = color(100, 100, 100);
    hindrance = 0;
  }
  
  Terrain(int newx, int newy, int newHind){
    x = newx;
    y = newy;
    c = color(100, 100, 100);
    hindrance = newHind;
  }
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
     //image(img, x, y);
  }
}