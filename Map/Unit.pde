abstract class Unit{
  
  int pNum;
  int x;
  int y;
  int edge;
  color c;
  float health;
  int movement;
  int moveLeft;
  float attack;
  float defense;
  boolean moved;
  boolean attacked;
  boolean captured;
  boolean dead;
  PImage img;
  
  Unit(){
    x = ((int)random(width - 2*16))/16 * 16 + 16;
    y = ((int)random(width - 2*16))/16 * 16 + 16;
    c = color(100, 100, 255);
    edge = 16;
    health = 100;
    movement = 1;
    attack = 10;
    defense = 10;
    moved = true;
    dead = false;
    moveLeft = 0;
    attacked = true;
    captured = true;
  }
  
  Unit(int newx, int newy, int newMovement, float newAttack, float newDefense){
    x = newx * 16;
    y = newy * 16;
    c = color(100, 100, 255);
    edge = 16;
    health = 100;
    movement = newMovement;
    attack = newAttack;
    defense = newDefense;
    moved = true;
    dead = false;
    moveLeft = 0;
    attacked = true;
    captured = true;
  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     rect(x, y, edge, edge); 
  }
 
  void reset(){
    moved = false;
  }
  
  void moved(){
    moved = true;
  }
  
  boolean move(int addx, int addy){
    System.out.println("Move active");
    if(moveLeft == 0 || moved == true){
      moved = true;
      System.out.println("Unit no more move");
      return false;
    }
    else{
      x += addx;
      System.out.println("x:" + x + " x:" + x/16);
      y += addy;
      System.out.println("y:" + y + " y:" + y/16);
      moveLeft--;
      System.out.println("Unit can move " + moveLeft + " more spaces\n");
      return true;
    }
    
  }
  
  void attack(Board B, Unit target) {
    if(attacked == false){
      if (pNum == target.pNum) {
        System.out.println("Cannot attack own units");
      }
      else {
        //target.defend( (attack * 100/100 + Math.random(10)) * (health/10) * ( (200 - (100 +_board[target.x/10][target.y/10].terrain.DTR * target.health) )/100 ) )
        double dmg = (attack * 100.0/100.0 + Math.random()) * (health/10.0) * ( (200.0 - (100.0 + 0.0 * target.health) )/100.0 );
        System.out.println("Damage: " + dmg);
        target.defend(B, dmg);
        System.out.println("Target's health: " + target.health);
        if( ! target.dead ) {
          dmg = (target.attack * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (200.0 - (100.0 + 0.0 * health) )/100.0 );
          System.out.println("Damage Taken: " + dmg);
          defend(B, dmg);
          System.out.println("Own health: " + health+"\n");
        }
        attacked = true;
        moved = true;
      }
    }
    else{
      System.out.println("Already attacked");
    }
  }
  
  
  void defend(Board B, double damage) {
    if (health - damage <= 0.0){
      B._board[y/16][x/16]._unitG = null;
      dead = true;
    }
    else{
      health -= damage;
    }
  }
}