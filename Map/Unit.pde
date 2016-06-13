abstract class Unit{
  
  int pNum;
  int x;
  int y;
  int edge;
  float health;
  int movement;
  boolean moved;
  boolean attacked;
  boolean captured;
  boolean dead;
  boolean canAttack;
  PImage img;
  PImage health1;
  PImage health2;
  PImage health3;
  PImage health4;
  PImage health5;
  PImage health6;
  PImage health7;
  PImage health8;
  PImage health9;
  String mvType;
  String uType;
  boolean canGround, canCopter, canPlane;
  int cost;
  float troopA, vehA, airA;
  boolean canTransport;
  Unit transported;
  int minR = 0;
  int maxR = 0;
  boolean range;
  
  Unit(){
    x = ((int)random(width - 2*16))/16 * 16 + 16;
    y = ((int)random(width - 2*16))/16 * 16 + 16;
    edge = 16;
    health = 100;
    movement = 1;
    troopA = vehA = airA = 1;
    moved = true;
    dead = false;
    attacked = true;
    captured = true;
    cost = 1000;
    canGround = canCopter = canPlane = false;
    canAttack = true;
    canTransport = false;
    transported = null;
    health1 = loadImage("hp1.png");
    health2 = loadImage("hp2.png");
    health3 = loadImage("hp3.png");
    health4 = loadImage("hp4.png");
    health5 = loadImage("hp5.png");
    health6 = loadImage("hp6.png");
    health7 = loadImage("hp7.png");
    health8 = loadImage("hp8.png");
    health9 = loadImage("hp9.png");
  }
  
  Unit(int newx, int newy, int newMovement, float ta, float va, float aa, int newCost){
    x = newx * 16;
    y = newy * 16;
    edge = 16;
    health = 100;
    movement = newMovement;
    moved = true;
    dead = false;
    attacked = true;
    captured = true;
    cost = newCost;
    canGround = canCopter = canPlane = false;
    troopA = ta;
    vehA = va;
    airA = aa;
    canAttack = true;
    canTransport = false;
    transported = null;
    health1 = loadImage("hp1.png");
    health2 = loadImage("hp2.png");
    health3 = loadImage("hp3.png");
    health4 = loadImage("hp4.png");
    health5 = loadImage("hp5.png");
    health6 = loadImage("hp6.png");
    health7 = loadImage("hp7.png");
    health8 = loadImage("hp8.png");
    health9 = loadImage("hp9.png");
}
  
  void draw(){
    image(img, x, y);
    int i = (int)((health+5)/10);
    if (i==1){
       image(health1,x+8,y+8);
    }
    else if (i==2){
       image(health2,x+8,y+8);
    }
    else if (i==3){
       image(health3,x+8,y+8);
    }
    else if (i==4){
       image(health4,x+8,y+8);
    }
    else if (i==5){
       image(health5,x+8,y+8);
    }
    else if (i==6){
       image(health6,x+8,y+8);
    }
    else if (i==7){
       image(health7,x+8,y+8);
    }
    else if (i==8){
       image(health8,x+8,y+8);
    }
    else if (i==9){
       image(health9,x+8,y+8);
    }
    if(transported != null){
      image(loadImage("loaded.png"),x,y+9);
    }
  }
 
  void reset(){
    moved = false;
  }
  
  void moved(){
    moved = true;
  }
  
  void moving(Board B, int newx, int newy){
    for(int r = 0; r< B._board.length; r++){
       for(int c = 0; c < B._board[r].length; c++){
            B._board[r][c].movement = 0;
          }
       }
      x = newx;
      y = newy;
      moved = true;
   
  }
  
  void attack(Board B, Unit target) {
    if(attacked == false && canAttack){
      if (pNum == target.pNum) {
        System.out.println("Cannot attack own units");
      }
      else {
        //target.defend( (attack * 100/100 + Math.random(10)) * (health/10) * ( (200 - (100 +_board[target.x/10][target.y/10].terrain.DTR * target.health) )/100 ) )
        //double dmg = (attack * 100.0/100.0 + Math.random()) * (health/10.0) * ( (200.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 );

        double dmg = 0;
        if(canPlane && target.uType.equals("plane")){
          dmg = (airA * 100.0/100.0 + Math.random()) * (health/10.0) * ( (600.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 )/(5 - Math.pow(B._board[target.y/16][target.x/16].terrain.defense, 0.5)) - 0.25;
        }
        else if(canCopter && target.uType.equals("copter")){
          dmg = (airA * 100.0/100.0 + Math.random()) * (health/10.0) * ( (600.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 )/(5 - Math.pow(B._board[target.y/16][target.x/16].terrain.defense, 0.5)) - 0.25;          
        }
        else{
          if(target.uType.equals("vehicle")){
            dmg = (vehA * 100.0/100.0 + Math.random()) * (health/10.0) * ( (600.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 )/(5 - Math.pow(B._board[target.y/16][target.x/16].terrain.defense, 0.5)) - 0.25;
          }
          else if(target.uType.equals("troop")){
            dmg = (troopA * 100.0/100.0 + Math.random()) * (health/10.0) * ( (600.0 - (100.0 + B._board[target.y/16][target.x/16].terrain.defense * target.health) )/100.0 )/(5 - Math.pow(B._board[target.y/16][target.x/16].terrain.defense, 0.5)) - 0.25;         
          }
        }
        System.out.println("Damage: " + dmg);
        target.defend(B, dmg);
        System.out.println("Target's health: " + target.health);
        double edmg = 0;
        if( ! target.dead ) {         
          if(target.canPlane && uType.equals("plane")){
            edmg = (target.airA * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (600.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 )/(5 - Math.pow(B._board[y/16][x/16].terrain.defense, 0.5)) - 0.25;
          }
          else if(target.canCopter && uType.equals("copter")){
            edmg = (target.airA * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (600.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 )/(5 - Math.pow(B._board[y/16][x/16].terrain.defense, 0.5)) - 0.25;
          }
          else{
            if(uType.equals("vehicle")){
              edmg = (target.vehA * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (600.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 )/(5 - Math.pow(B._board[y/16][x/16].terrain.defense, 0.5)) - 0.25;
            }
            else if(uType.equals("troop")){
              edmg = (target.airA * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (600.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 )/(5 - Math.pow(B._board[y/16][x/16].terrain.defense, 0.5)) - 0.25;
            }
          }
          //dmg = (target.attack * 100.0/100.0 + Math.random()) * (target.health/10.0) * ( (200.0 - (100.0 + B._board[y/16][x/16].terrain.defense * health) )/100.0 );
          System.out.println("Damage Taken: " + edmg);
          defend(B, edmg);
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
      if (damage > 0) {
        health -= damage;
      }
    }
  }
  
  void rangeAttack(Board B, int x, int y, int moves) {
    if (moves <= maxR) {
      setAttackSpace(B, x, y, moves); 
      if (y != 0) {
        rangeAttack(B, x, y-16, moves+1);
      }
      if (y != (B._board.length - 1) * 16) { 
        rangeAttack(B, x, y+16, moves+1);
      }
      if (x != 0) {  
        rangeAttack(B, x-16, y, moves+1);
      }
      if (x != (B._board[0].length - 1) * 16) { 
        rangeAttack(B, x+16, y, moves+1);
      }
    }
  }
  
  void setAttackSpace(Board B, int x, int y, int moves) {
    Space space = B._board[y/16][x/16];
    if (space.movement == 0 || moves < space.movement) {
      space.movement = moves;
    }
  }
  
  void checkSpaces(Board B) {
    for(int r = 0; r < B._board.length; r++){
      for(int c = 0; c < B._board[r].length; c++){
         if (B._board[r][c].movement >= minR) {
           //System.out.println(_board._board[r][c].movement);
           B._board[r][c].movement = -1;  
         }
         else {
           B._board[r][c].movement = 0;  
         }
      }
    }
    B._board[y/16][x/16].movement = 0;
  }
  
  
  void moves(Board B, int x, int y, String hindrance, int movesLeft, int moves) {
    System.out.println("y: " + (B._board[0].length - 1) * 16);
    if (movesLeft != 0) {
      int H;
      if (y != 0 && getHindrance(B, x, y-16, hindrance) <= movesLeft && (B._board[y/16 - 1][x/16]._unitG == null || B._board[y/16-1][x/16]._unitG.pNum == pNum)) {
        H = getHindrance(B, x, y-16, hindrance);
        setSpace(B, x, y-16, moves + H);
        moves(B, x, y-16, hindrance, movesLeft - H, moves + H); 
      }
      if (y != (B._board.length - 1) * 16 && getHindrance(B, x, y+16, hindrance) <= movesLeft && (B._board[y/16 + 1][x/16]._unitG == null || B._board[y/16 + 1][x/16]._unitG.pNum == pNum)) {
        H = getHindrance(B, x, y+16, hindrance);
        setSpace(B, x, y+16, moves + H);
        moves(B, x, y+16, hindrance, movesLeft - H, moves + H); 
      }
      if (x != 0 && getHindrance(B, x-16, y, hindrance) <= movesLeft && (B._board[y/16][x/16 - 1]._unitG == null || B._board[y/16][x/16 - 1]._unitG.pNum == pNum)) {
        H = getHindrance(B, x-16, y, hindrance);
        setSpace(B, x-16, y, moves + H);
        moves(B, x-16, y, hindrance, movesLeft - H, moves + H); 
      }
      if (x != (B._board[0].length - 1) * 16 && getHindrance(B, x+16, y, hindrance) <= movesLeft && (B._board[y/16][x/16 + 1]._unitG == null || B._board[y/16][x/16 + 1]._unitG.pNum == pNum)) {
        H = getHindrance(B, x+16, y, hindrance);
        setSpace(B, x+16, y, moves + H);
        moves(B, x+16, y, hindrance, movesLeft - H, moves + H); 
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
     if (space._unitG == null) {
      if (space.movement > moves || space.movement == 0) {
        space.movement = moves;
      }
    }
    else {
      if (space._unitG.pNum == pNum){
        if(space._unitG.canTransport && space._unitG.transported == null && uType.equals("troop")){
          if (space.movement > moves || space.movement == 0) {
            space.movement = moves;
          }
        } 
        if(space.movement > moves || space.movement == 0) {
          space.movement = 0;
        }
      }
    }
  }
  
}