class Board{
   Space[][] _board;
   
    
   void draw(){
       for(int i = 0; i< _board.length; i++){
           for(int j = 0; j < _board[i].length; j++){
               _board[i][j].draw();
           }
       }
   }
               
  
}