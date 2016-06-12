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
  String mvType;
  String uType;
  boolean canGround, canCopter, canPlane;
  int cost;
  float troopA, vehA, airA;
  boolean canTransport;
  Unit transported;
  
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
}
  
  void draw(){
     image(img, x, y);
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
      health -= damage;
    }
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
      if (space._unitG.pNum == pNum && (space.movement > moves || space.movement == 0)) {
        space.movement = 0;
      }
    }
  }
  
}