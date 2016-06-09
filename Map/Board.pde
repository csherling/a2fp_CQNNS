class Board{ 
   Space[][] _board; //moved into Map
   
   Board(int rsize, int csize){
     _board = new Space[rsize][csize];
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c] = new Space();
           }
       }
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c].terrain = new Road(c, r);
           }
       }
   }
    
   void draw(){
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c].draw();
           }
       }
   }
   
   void addUnit(Unit u, int r, int c){
     _board[c][r]._unitG = u;
   }
   
  void move(Unit u, int addx, int addy){
    if(u != null){
      if(!(u.x + addx < 0 || u.x + addx > (_board[0].length - 1) * 16 || u.y + addy < 0 || u.y + addy > (_board.length - 1) * 16)){
        if(_board[(u.y + addy ) / 16][(u.x + addx) / 16]._unitG == null){
          System.out.println("hii");
          if(u.moveLeft > 0){
            _board[u.y / 16][u.x / 16]._unitG = null;
            //System.out.println("ux uy: " + u.x + " , " + u.y );
            //System.out.println("addx addy: " + addx + " , " + addy );
            _board[(u.y + addy ) / 16][(u.x + addx) / 16]._unitG = u;
            u.move(addx, addy);
          }
        //System.out.println("ux uy: " + u.x + " , " + u.y ); 
        }
      }
      else{
        System.out.println("Out of Bounds");
      }
    }
    else{
      System.out.println("Please cycle");
    }
  }

  
}