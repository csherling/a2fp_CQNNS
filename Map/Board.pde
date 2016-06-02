class Board{ 
   Space[][] _board; //moved into Map
   
   Board(int size){
     _board = new Space[size][size];
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c] = new Space();
           }
       }
     
   }
    
   void draw(){
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             if(_board[r][c]._unitG != null){
               _board[r][c].draw();
             }
           }
       }
   }
   
   void addUnit(Unit u, int r, int c){
     _board[c][r]._unitG = u;
   }
   
  void move(Unit u, int addx, int addy){
    if(!(u.x + addx < 0 || u.x + addx > _board[0].length * 10 || u.y + addy < 0 || u.y + addy > _board.length * 10)){
      u.move(addx, addy);
      _board[u.y / 10][u.x / 10]._unitG = null;
      _board[(u.y + addy ) / 10][(u.x + addx) / 10]._unitG = u;
    }
    else{
      System.out.println("Out of Bounds");
    }
  }

  
}