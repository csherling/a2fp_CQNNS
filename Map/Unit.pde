abstract class Unit{
  
  int pNum;
  int x;
  int y;
  int edge;
  color c;
  float health;
  int movement;
  float attack;
  float defense;
  boolean moved;
  boolean dead;
  
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
    dead = false;
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
    dead = false;
  }
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
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
  
  void attack(Board B, Unit target) {
    if (pNum == target.pNum) {
      System.out.println("Cannot attack own units");
    }
    else {
      //target.defend( (attack * 100/100 + Math.random(10)) * (health/10) * ( (200 - (100 +_board[target.x/10][target.y/10].terrain.DTR * target.health) )/100 ) )
      double dmg = (attack * 100.0/100.0 + Math.random()) * (health/10.0) * ( (200.0 - (100.0 + 0.0 * target.health) )/100.0 );
      System.out.println("Damage: " + dmg);
      target.defend(B, dmg);
      System.out.println("Target's health: " + target.health);
      //if(target.dead == false){
      //  health -= (target.attack * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (200.0 - (100.0 + 0.0 * health) )/100.0 );
      //  if(health <= 0){
      //    dead = true;
      //  }
      //}
    }
  }
  
  
  void defend(Board B, double damage) {
    if (health - damage <= 0.0){
      B._board[y/10][x/10]._unitG = null;
      dead = true;
    }
    else{
      health -= damage;
    }
  }
    
}