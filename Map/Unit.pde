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
  String mvType;
  
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
        //double dmg = (attack * 100.0/100.0 + Math.random()) * (health/10.0) * ( (200.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 );
        double dmg = (attack * 100.0/100.0 + Math.random()) * (health/10.0) * ( (600.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 )/(5 - Math.pow(B._board[target.y/16][target.x/16].terrain.defense, 0.5)) - 0.25;
        System.out.println("Damage: " + dmg);
        target.defend(B, dmg);
        System.out.println("Target's health: " + target.health);
        if( ! target.dead ) {
          //dmg = (target.attack * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (200.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 );
          dmg = (target.attack * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (600.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 )/(5 - Math.pow(B._board[y/16][x/16].terrain.defense, 0.5)) - 0.25;
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
  
  void move(Board B, int x, int y, String hindrance, int movesLeft, int moves) {
    if (movesLeft != 0) {
      int H;
      if (y != 0 && getHindrance(B, x, y-16, hindrance) <= movesLeft) {
        H = getHindrance(B, x, y-16, hindrance);
        setSpace(B, x, y-16, moves + H);
        move(B, x, y-16, hindrance, movesLeft - H, moves + H); 
      }
      if (y != (B._board[0].length - 1) * 16 && getHindrance(B, x, y+16, hindrance) <= movesLeft) {
        H = getHindrance(B, x, y+16, hindrance);
        setSpace(B, x, y+16, moves + H);
        move(B, x, y+16, hindrance, movesLeft - H, moves + H); 
      }
      if (x != 0 && getHindrance(B, x-16, y, hindrance) <= movesLeft) {
        H = getHindrance(B, x-16, y, hindrance);
        setSpace(B, x-16, y, moves + H);
        move(B, x-16, y, hindrance, movesLeft - H, moves + H); 
      }
      if (x != (B._board[0].length - 1) * 16 && getHindrance(B, x+16, y, hindrance) <= movesLeft) {
        H = getHindrance(B, x+16, y, hindrance);
        setSpace(B, x+16, y, moves + H);
        move(B, x+16, y, hindrance, movesLeft - H, moves + H); 
      }
    }
    
  }
  
  int getHindrance(Board B, int x, int y, String hindrance) {
    int H = 0;
    if (hindrance.equals("foot")) H = B._board[y/16][x/16].terrain.footHindrance;
    else if (hindrance.equals("wheel")) H = B._board[y/16][x/16].terrain.wheelHindrance;
    else if (hindrance.equals("tread")) H = B._board[y/16][x/16].terrain.treadHindrance;
    else if (hindrance.equals("air")) H = B._board[y/16][x/16].terrain.airHindrance;
    return H;
  }
  
  void setSpace(Board B, int x, int y, int moves) {
    Space space = B._board[y/16][x/16];
    if (space.movement > moves || space.movement == 0) {
      space.movement = moves;
    }
  }
  
}