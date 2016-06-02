abstract class Unit{
 
  int x;
  int y;
  int edge;
  color c;
  float health;
  int movement;
  float attack;
  float defense;
  boolean moved;
  
  Unit(){
    x = ((int)random(width - 2*10))/10 * 10 + 10;
    y = ((int)random(width - 2*10))/10 * 10 + 10;
    c = color(100, 100, 255);
    edge = 10;
    health = 100;
    movement = 1;
    attack = 10;
    defense = 10;
    moved = true;
  }
  
  Unit(int newx, int newy, int newMovement, float newAttack, float newDefense){
    x = newx * 10;
    y = newy * 10;
    c = color(100, 100, 255);
    edge = 10;
    health = 100;
    movement = newMovement;
    attack = newAttack;
    defense = newDefense;
    moved = true;
  }
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
 
  void reset(){
    moved = false;
  }
  
  void moved(){
    moved = true;
  }
  
  void move(int addx, int addy){
    x += addx;
    y += addy;
  }
    
}