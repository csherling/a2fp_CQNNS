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
   
   void addUnit(int r, int c){
     _board[c][r]._unitG = new Infantry(r,c);
   }
               
  
}